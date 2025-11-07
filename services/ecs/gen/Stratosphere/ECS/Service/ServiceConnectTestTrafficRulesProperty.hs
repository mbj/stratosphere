module Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesProperty (
        module Exports, ServiceConnectTestTrafficRulesProperty(..),
        mkServiceConnectTestTrafficRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesHeaderProperty as Exports
import Stratosphere.ResourceProperties
data ServiceConnectTestTrafficRulesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrules.html>
    ServiceConnectTestTrafficRulesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrules.html#cfn-ecs-service-serviceconnecttesttrafficrules-header>
                                            header :: ServiceConnectTestTrafficRulesHeaderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectTestTrafficRulesProperty ::
  ServiceConnectTestTrafficRulesHeaderProperty
  -> ServiceConnectTestTrafficRulesProperty
mkServiceConnectTestTrafficRulesProperty header
  = ServiceConnectTestTrafficRulesProperty
      {haddock_workaround_ = (), header = header}
instance ToResourceProperties ServiceConnectTestTrafficRulesProperty where
  toResourceProperties ServiceConnectTestTrafficRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectTestTrafficRules",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header]}
instance JSON.ToJSON ServiceConnectTestTrafficRulesProperty where
  toJSON ServiceConnectTestTrafficRulesProperty {..}
    = JSON.object ["Header" JSON..= header]
instance Property "Header" ServiceConnectTestTrafficRulesProperty where
  type PropertyType "Header" ServiceConnectTestTrafficRulesProperty = ServiceConnectTestTrafficRulesHeaderProperty
  set newValue ServiceConnectTestTrafficRulesProperty {..}
    = ServiceConnectTestTrafficRulesProperty {header = newValue, ..}