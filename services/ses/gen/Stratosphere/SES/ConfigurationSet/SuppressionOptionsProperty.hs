module Stratosphere.SES.ConfigurationSet.SuppressionOptionsProperty (
        SuppressionOptionsProperty(..), mkSuppressionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuppressionOptionsProperty
  = SuppressionOptionsProperty {suppressedReasons :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSuppressionOptionsProperty :: SuppressionOptionsProperty
mkSuppressionOptionsProperty
  = SuppressionOptionsProperty {suppressedReasons = Prelude.Nothing}
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
  set newValue SuppressionOptionsProperty {}
    = SuppressionOptionsProperty
        {suppressedReasons = Prelude.pure newValue, ..}