module Stratosphere.FraudDetector.Outcome (
        Outcome(..), mkOutcome
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Outcome
  = Outcome {description :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag])}
mkOutcome :: Value Prelude.Text -> Outcome
mkOutcome name
  = Outcome
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Outcome where
  toResourceProperties Outcome {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Outcome",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Outcome where
  toJSON Outcome {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Outcome where
  type PropertyType "Description" Outcome = Value Prelude.Text
  set newValue Outcome {..}
    = Outcome {description = Prelude.pure newValue, ..}
instance Property "Name" Outcome where
  type PropertyType "Name" Outcome = Value Prelude.Text
  set newValue Outcome {..} = Outcome {name = newValue, ..}
instance Property "Tags" Outcome where
  type PropertyType "Tags" Outcome = [Tag]
  set newValue Outcome {..}
    = Outcome {tags = Prelude.pure newValue, ..}