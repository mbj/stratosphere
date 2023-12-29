module Stratosphere.Glue.Classifier (
        module Exports, Classifier(..), mkClassifier
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Classifier.CsvClassifierProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Classifier.GrokClassifierProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Classifier.JsonClassifierProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Classifier.XMLClassifierProperty as Exports
import Stratosphere.ResourceProperties
data Classifier
  = Classifier {csvClassifier :: (Prelude.Maybe CsvClassifierProperty),
                grokClassifier :: (Prelude.Maybe GrokClassifierProperty),
                jsonClassifier :: (Prelude.Maybe JsonClassifierProperty),
                xMLClassifier :: (Prelude.Maybe XMLClassifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClassifier :: Classifier
mkClassifier
  = Classifier
      {csvClassifier = Prelude.Nothing, grokClassifier = Prelude.Nothing,
       jsonClassifier = Prelude.Nothing, xMLClassifier = Prelude.Nothing}
instance ToResourceProperties Classifier where
  toResourceProperties Classifier {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CsvClassifier" Prelude.<$> csvClassifier,
                            (JSON..=) "GrokClassifier" Prelude.<$> grokClassifier,
                            (JSON..=) "JsonClassifier" Prelude.<$> jsonClassifier,
                            (JSON..=) "XMLClassifier" Prelude.<$> xMLClassifier])}
instance JSON.ToJSON Classifier where
  toJSON Classifier {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CsvClassifier" Prelude.<$> csvClassifier,
               (JSON..=) "GrokClassifier" Prelude.<$> grokClassifier,
               (JSON..=) "JsonClassifier" Prelude.<$> jsonClassifier,
               (JSON..=) "XMLClassifier" Prelude.<$> xMLClassifier]))
instance Property "CsvClassifier" Classifier where
  type PropertyType "CsvClassifier" Classifier = CsvClassifierProperty
  set newValue Classifier {..}
    = Classifier {csvClassifier = Prelude.pure newValue, ..}
instance Property "GrokClassifier" Classifier where
  type PropertyType "GrokClassifier" Classifier = GrokClassifierProperty
  set newValue Classifier {..}
    = Classifier {grokClassifier = Prelude.pure newValue, ..}
instance Property "JsonClassifier" Classifier where
  type PropertyType "JsonClassifier" Classifier = JsonClassifierProperty
  set newValue Classifier {..}
    = Classifier {jsonClassifier = Prelude.pure newValue, ..}
instance Property "XMLClassifier" Classifier where
  type PropertyType "XMLClassifier" Classifier = XMLClassifierProperty
  set newValue Classifier {..}
    = Classifier {xMLClassifier = Prelude.pure newValue, ..}