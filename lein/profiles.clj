{:user {:plugins [[lein-kibit "0.1.5"]]
        :dependencies [[jonase/eastwood "0.2.1" :exclusions [org.clojure/clojure]]] 
        :repl-options {:init (require 'cljfmt.core)}}}
