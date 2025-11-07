module Stratosphere.QuickSight.Dashboard.ValidationStrategyProperty (
        ValidationStrategyProperty(..), mkValidationStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidationStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-validationstrategy.html>
    ValidationStrategyProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-validationstrategy.html#cfn-quicksight-dashboard-validationstrategy-mode>
                                mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidationStrategyProperty ::
  Value Prelude.Text -> ValidationStrategyProperty
mkValidationStrategyProperty mode
  = ValidationStrategyProperty
      {haddock_workaround_ = (), mode = mode}
instance ToResourceProperties ValidationStrategyProperty where
  toResourceProperties ValidationStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ValidationStrategy",
         supportsTags = Prelude.False, properties = ["Mode" JSON..= mode]}
instance JSON.ToJSON ValidationStrategyProperty where
  toJSON ValidationStrategyProperty {..}
    = JSON.object ["Mode" JSON..= mode]
instance Property "Mode" ValidationStrategyProperty where
  type PropertyType "Mode" ValidationStrategyProperty = Value Prelude.Text
  set newValue ValidationStrategyProperty {..}
    = ValidationStrategyProperty {mode = newValue, ..}