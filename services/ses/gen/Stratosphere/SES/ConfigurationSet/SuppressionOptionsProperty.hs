module Stratosphere.SES.ConfigurationSet.SuppressionOptionsProperty (
        SuppressionOptionsProperty(..), mkSuppressionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuppressionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-suppressionoptions.html>
    SuppressionOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-suppressionoptions.html#cfn-ses-configurationset-suppressionoptions-suppressedreasons>
                                suppressedReasons :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuppressionOptionsProperty :: SuppressionOptionsProperty
mkSuppressionOptionsProperty
  = SuppressionOptionsProperty
      {haddock_workaround_ = (), suppressedReasons = Prelude.Nothing}
instance ToResourceProperties SuppressionOptionsProperty where
  toResourceProperties SuppressionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.SuppressionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SuppressedReasons" Prelude.<$> suppressedReasons])}
instance JSON.ToJSON SuppressionOptionsProperty where
  toJSON SuppressionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SuppressedReasons" Prelude.<$> suppressedReasons]))
instance Property "SuppressedReasons" SuppressionOptionsProperty where
  type PropertyType "SuppressedReasons" SuppressionOptionsProperty = ValueList Prelude.Text
  set newValue SuppressionOptionsProperty {..}
    = SuppressionOptionsProperty
        {suppressedReasons = Prelude.pure newValue, ..}