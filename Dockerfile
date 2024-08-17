# Use the base image with Ubuntu and NoVNC preconfigured
FROM fredblgr/ubuntu-novnc:20.04
 
# Expose the port for web access (NoVNC on port 80 inside the container)
EXPOSE 80
 
# Set the environment variable for screen resolution (optimized for mobile devices)
ENV RESOLUTION 960x540
 
# Start the command to run NoVNC using Supervisor for process management
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
