attribute vec3 position;
attribute float size;
attribute vec4 aVertexColor;

uniform mat4 modelView;
uniform mat4 perspective;

varying vec4 vColor;

void main () {
  gl_Position = perspective * modelView * vec4(position, 1);
  gl_PointSize = 20;
  vColor = aVertexColor;
}