{:user {:plugins [[jonase/eastwood "0.3.5"]
                  [lein-kibit "0.1.6"]]
        :dependencies [[jonase/eastwood "0.2.1" :exclusions [org.clojure/clojure]]
                       [cljfmt "0.5.1"]]
        :repl-options {:init (require 'cljfmt.core)}}}
