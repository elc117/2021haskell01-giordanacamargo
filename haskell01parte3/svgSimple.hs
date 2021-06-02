import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style


svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 60 60 1000 "rgb(20, 11, 55, 1)") ++ -- Fundo
  
  (svgCircle 82 200 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 59 300 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 188 301 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 315 380 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 201 289 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 400 400 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 500 500 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 19 190 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 480 222 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 315 150 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 342 270 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 206 18 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 260 132 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 199 210 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 290 100 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 280 15 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 215 301 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 250 240 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 450 100 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha
  (svgCircle 470 270 1 "rgb(255, 255, 255, 1)") ++ -- Estrelinha


  (svgCircle 95 95 75 "rgb(255, 255, 255, 0.1)") ++ -- Brilho Lua
  (svgCircle 95 95 50 "rgb(255, 255, 255, 1)") ++ -- Lua
  --(svgCircle 95 95 10 "rgb(0, 0, 0, 0.1)") ++ -- buraco da lua 1 MEIO
  (svgCircle 110 110 15 "rgb(0, 0, 0, 0.15)") ++ -- buraco da lua 1 
  (svgCircle 72 82 10 "rgb(0, 0, 0, 0.12)") ++ -- buraco da lua 2
  (svgCircle 75 120 13 "rgb(0, 0, 0, 0.1)") ++ -- buraco da lua 3

  (svgCircle 90 1100 800 "rgb(23, 25, 10, 0.9)") ++ -- graminha
  (svgCircle 250 1200 850 "rgb(23, 50, 16, 1)") ++ -- graminha
 
 
 
 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
