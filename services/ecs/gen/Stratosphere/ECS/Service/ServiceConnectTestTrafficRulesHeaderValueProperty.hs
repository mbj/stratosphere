module Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesHeaderValueProperty (
        ServiceConnectTestTrafficRulesHeaderValueProperty(..),
        mkServiceConnectTestTrafficRulesHeaderValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectTestTrafficRulesHeaderValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrulesheadervalue.html>
    ServiceConnectTestTrafficRulesHeaderValueProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrulesheadervalue.html#cfn-ecs-service-serviceconnecttesttrafficrulesheadervalue-exact>
                                                       exact :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectTestTrafficRulesHeaderValueProperty ::
  Value Prelude.Text
  -> ServiceConnectTestTrafficRulesHeaderValueProperty
mkServiceConnectTestTrafficRulesHeaderValueProperty exact
  = ServiceConnectTestTrafficRulesHeaderValueProperty
      {haddock_workaround_ = (), exact = exact}
instance ToResourceProperties ServiceConnectTestTrafficRulesHeaderValueProperty where
  toResourceProperties
    ServiceConnectTestTrafficRulesHeaderValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectTestTrafficRulesHeaderValue",
         supportsTags = Prelude.False, properties = ["Exact" JSON..= exact]}
instance JSON.ToJSON ServiceConnectTestTrafficRulesHeaderValueProperty where
  toJSON ServiceConnectTestTrafficRulesHeaderValueProperty {..}
    = JSON.object ["Exact" JSON..= exact]
instance Property "Exact" ServiceConnectTestTrafficRulesHeaderValueProperty where
  type PropertyType "Exact" ServiceConnectTestTrafficRulesHeaderValueProperty = Value Prelude.Text
  set newValue ServiceConnectTestTrafficRulesHeaderValueProperty {..}
    = ServiceConnectTestTrafficRulesHeaderValueProperty
        {exact = newValue, ..}