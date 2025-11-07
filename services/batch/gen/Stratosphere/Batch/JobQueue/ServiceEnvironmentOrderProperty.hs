module Stratosphere.Batch.JobQueue.ServiceEnvironmentOrderProperty (
        ServiceEnvironmentOrderProperty(..),
        mkServiceEnvironmentOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceEnvironmentOrderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-serviceenvironmentorder.html>
    ServiceEnvironmentOrderProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-serviceenvironmentorder.html#cfn-batch-jobqueue-serviceenvironmentorder-order>
                                     order :: (Value Prelude.Integer),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-serviceenvironmentorder.html#cfn-batch-jobqueue-serviceenvironmentorder-serviceenvironment>
                                     serviceEnvironment :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceEnvironmentOrderProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> ServiceEnvironmentOrderProperty
mkServiceEnvironmentOrderProperty order serviceEnvironment
  = ServiceEnvironmentOrderProperty
      {haddock_workaround_ = (), order = order,
       serviceEnvironment = serviceEnvironment}
instance ToResourceProperties ServiceEnvironmentOrderProperty where
  toResourceProperties ServiceEnvironmentOrderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobQueue.ServiceEnvironmentOrder",
         supportsTags = Prelude.False,
         properties = ["Order" JSON..= order,
                       "ServiceEnvironment" JSON..= serviceEnvironment]}
instance JSON.ToJSON ServiceEnvironmentOrderProperty where
  toJSON ServiceEnvironmentOrderProperty {..}
    = JSON.object
        ["Order" JSON..= order,
         "ServiceEnvironment" JSON..= serviceEnvironment]
instance Property "Order" ServiceEnvironmentOrderProperty where
  type PropertyType "Order" ServiceEnvironmentOrderProperty = Value Prelude.Integer
  set newValue ServiceEnvironmentOrderProperty {..}
    = ServiceEnvironmentOrderProperty {order = newValue, ..}
instance Property "ServiceEnvironment" ServiceEnvironmentOrderProperty where
  type PropertyType "ServiceEnvironment" ServiceEnvironmentOrderProperty = Value Prelude.Text
  set newValue ServiceEnvironmentOrderProperty {..}
    = ServiceEnvironmentOrderProperty
        {serviceEnvironment = newValue, ..}