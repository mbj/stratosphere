module Stratosphere.Glue.Classifier.GrokClassifierProperty (
        GrokClassifierProperty(..), mkGrokClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrokClassifierProperty
  = GrokClassifierProperty {classification :: (Value Prelude.Text),
                            customPatterns :: (Prelude.Maybe (Value Prelude.Text)),
                            grokPattern :: (Value Prelude.Text),
                            name :: (Prelude.Maybe (Value Prelude.Text))}
mkGrokClassifierProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GrokClassifierProperty
mkGrokClassifierProperty classification grokPattern
  = GrokClassifierProperty
      {classification = classification, grokPattern = grokPattern,
       customPatterns = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties GrokClassifierProperty where
  toResourceProperties GrokClassifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier.GrokClassifier",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Classification" JSON..= classification,
                            "GrokPattern" JSON..= grokPattern]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomPatterns" Prelude.<$> customPatterns,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON GrokClassifierProperty where
  toJSON GrokClassifierProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Classification" JSON..= classification,
               "GrokPattern" JSON..= grokPattern]
              (Prelude.catMaybes
                 [(JSON..=) "CustomPatterns" Prelude.<$> customPatterns,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "Classification" GrokClassifierProperty where
  type PropertyType "Classification" GrokClassifierProperty = Value Prelude.Text
  set newValue GrokClassifierProperty {..}
    = GrokClassifierProperty {classification = newValue, ..}
instance Property "CustomPatterns" GrokClassifierProperty where
  type PropertyType "CustomPatterns" GrokClassifierProperty = Value Prelude.Text
  set newValue GrokClassifierProperty {..}
    = GrokClassifierProperty
        {customPatterns = Prelude.pure newValue, ..}
instance Property "GrokPattern" GrokClassifierProperty where
  type PropertyType "GrokPattern" GrokClassifierProperty = Value Prelude.Text
  set newValue GrokClassifierProperty {..}
    = GrokClassifierProperty {grokPattern = newValue, ..}
instance Property "Name" GrokClassifierProperty where
  type PropertyType "Name" GrokClassifierProperty = Value Prelude.Text
  set newValue GrokClassifierProperty {..}
    = GrokClassifierProperty {name = Prelude.pure newValue, ..}