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
  (svgCircle 60 60 50 "rgb(10, 145, 32, 1)") ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)") ++
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
