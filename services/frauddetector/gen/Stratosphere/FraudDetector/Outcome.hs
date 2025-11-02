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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-outcome.html>
    Outcome {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-outcome.html#cfn-frauddetector-outcome-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-outcome.html#cfn-frauddetector-outcome-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-outcome.html#cfn-frauddetector-outcome-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutcome :: Value Prelude.Text -> Outcome
mkOutcome name
  = Outcome
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
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