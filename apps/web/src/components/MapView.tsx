import { useEffect, useRef } from "react";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import { ERROR_MESSAGES } from "../constants/errors";

const MapView = () => {
  const containerRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    if (!containerRef.current) return;

    const accessToken = import.meta.env.VITE_MAPBOX_ACCESS_TOKEN;
    const styleUrl = import.meta.env.VITE_MAPBOX_STYLE_URL;

    if (!accessToken) {
      console.error(ERROR_MESSAGES.MAPBOX_ACCESS_TOKEN_MISSING);
      return;
    }

    if (!styleUrl) {
      console.error(ERROR_MESSAGES.MAPBOX_STYLE_URL_MISSING);
      return;
    }

    mapboxgl.accessToken = accessToken;

    const map = new mapboxgl.Map({
      container: containerRef.current,
      style: styleUrl,
      bearing: 0,
      projection: "mercator",
    });

    map.dragRotate.disable();
    map.touchZoomRotate.disableRotation();
    map.keyboard.disableRotation();

    map.on("load", () => {
      map.fitBounds([
        [-126.0, 10.0],
        [-70.0, 48.0],
      ]);
    });

    return () => map.remove();
  }, []);

  return <div ref={containerRef} style={{ width: "100%", height: "100vh" }} />;
};

export default MapView;
