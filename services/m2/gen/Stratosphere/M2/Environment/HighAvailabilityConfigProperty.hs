module Stratosphere.M2.Environment.HighAvailabilityConfigProperty (
        HighAvailabilityConfigProperty(..),
        mkHighAvailabilityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HighAvailabilityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-environment-highavailabilityconfig.html>
    HighAvailabilityConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-environment-highavailabilityconfig.html#cfn-m2-environment-highavailabilityconfig-desiredcapacity>
                                    desiredCapacity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHighAvailabilityConfigProperty ::
  Value Prelude.Integer -> HighAvailabilityConfigProperty
mkHighAvailabilityConfigProperty desiredCapacity
  = HighAvailabilityConfigProperty
      {haddock_workaround_ = (), desiredCapacity = desiredCapacity}
instance ToResourceProperties HighAvailabilityConfigProperty where
  toResourceProperties HighAvailabilityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment.HighAvailabilityConfig",
         supportsTags = Prelude.False,
         properties = ["DesiredCapacity" JSON..= desiredCapacity]}
instance JSON.ToJSON HighAvailabilityConfigProperty where
  toJSON HighAvailabilityConfigProperty {..}
    = JSON.object ["DesiredCapacity" JSON..= desiredCapacity]
instance Property "DesiredCapacity" HighAvailabilityConfigProperty where
  type PropertyType "DesiredCapacity" HighAvailabilityConfigProperty = Value Prelude.Integer
  set newValue HighAvailabilityConfigProperty {..}
    = HighAvailabilityConfigProperty {desiredCapacity = newValue, ..}