module Stratosphere.Lambda.Function.SnapStartResponseProperty (
        SnapStartResponseProperty(..), mkSnapStartResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapStartResponseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-snapstartresponse.html>
    SnapStartResponseProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-snapstartresponse.html#cfn-lambda-function-snapstartresponse-applyon>
                               applyOn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-snapstartresponse.html#cfn-lambda-function-snapstartresponse-optimizationstatus>
                               optimizationStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapStartResponseProperty :: SnapStartResponseProperty
mkSnapStartResponseProperty
  = SnapStartResponseProperty
      {haddock_workaround_ = (), applyOn = Prelude.Nothing,
       optimizationStatus = Prelude.Nothing}
instance ToResourceProperties SnapStartResponseProperty where
  toResourceProperties SnapStartResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.SnapStartResponse",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplyOn" Prelude.<$> applyOn,
                            (JSON..=) "OptimizationStatus" Prelude.<$> optimizationStatus])}
instance JSON.ToJSON SnapStartResponseProperty where
  toJSON SnapStartResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplyOn" Prelude.<$> applyOn,
               (JSON..=) "OptimizationStatus" Prelude.<$> optimizationStatus]))
instance Property "ApplyOn" SnapStartResponseProperty where
  type PropertyType "ApplyOn" SnapStartResponseProperty = Value Prelude.Text
  set newValue SnapStartResponseProperty {..}
    = SnapStartResponseProperty {applyOn = Prelude.pure newValue, ..}
instance Property "OptimizationStatus" SnapStartResponseProperty where
  type PropertyType "OptimizationStatus" SnapStartResponseProperty = Value Prelude.Text
  set newValue SnapStartResponseProperty {..}
    = SnapStartResponseProperty
        {optimizationStatus = Prelude.pure newValue, ..}