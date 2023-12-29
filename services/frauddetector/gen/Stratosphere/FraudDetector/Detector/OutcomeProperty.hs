module Stratosphere.FraudDetector.Detector.OutcomeProperty (
        OutcomeProperty(..), mkOutcomeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OutcomeProperty
  = OutcomeProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                     createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     inline :: (Prelude.Maybe (Value Prelude.Bool)),
                     lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutcomeProperty :: OutcomeProperty
mkOutcomeProperty
  = OutcomeProperty
      {arn = Prelude.Nothing, createdTime = Prelude.Nothing,
       description = Prelude.Nothing, inline = Prelude.Nothing,
       lastUpdatedTime = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties OutcomeProperty where
  toResourceProperties OutcomeProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.Outcome",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Inline" Prelude.<$> inline,
                            (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON OutcomeProperty where
  toJSON OutcomeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Inline" Prelude.<$> inline,
               (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Arn" OutcomeProperty where
  type PropertyType "Arn" OutcomeProperty = Value Prelude.Text
  set newValue OutcomeProperty {..}
    = OutcomeProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" OutcomeProperty where
  type PropertyType "CreatedTime" OutcomeProperty = Value Prelude.Text
  set newValue OutcomeProperty {..}
    = OutcomeProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" OutcomeProperty where
  type PropertyType "Description" OutcomeProperty = Value Prelude.Text
  set newValue OutcomeProperty {..}
    = OutcomeProperty {description = Prelude.pure newValue, ..}
instance Property "Inline" OutcomeProperty where
  type PropertyType "Inline" OutcomeProperty = Value Prelude.Bool
  set newValue OutcomeProperty {..}
    = OutcomeProperty {inline = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" OutcomeProperty where
  type PropertyType "LastUpdatedTime" OutcomeProperty = Value Prelude.Text
  set newValue OutcomeProperty {..}
    = OutcomeProperty {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Name" OutcomeProperty where
  type PropertyType "Name" OutcomeProperty = Value Prelude.Text
  set newValue OutcomeProperty {..}
    = OutcomeProperty {name = Prelude.pure newValue, ..}
instance Property "Tags" OutcomeProperty where
  type PropertyType "Tags" OutcomeProperty = [Tag]
  set newValue OutcomeProperty {..}
    = OutcomeProperty {tags = Prelude.pure newValue, ..}