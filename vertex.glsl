attribute vec3 position;
attribute vec3 vertexColor;

uniform mat4 perspective;
uniform mat4 rotation;
uniform mat4 translation;

varying vec4 vColor;

void main () {
  gl_Position = perspective * translation * rotation * vec4(position, 1);
  gl_PointSize = 1.0;
  vColor = vec4(vertexColor, 1.0);
}