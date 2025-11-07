module Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesHeaderProperty (
        module Exports, ServiceConnectTestTrafficRulesHeaderProperty(..),
        mkServiceConnectTestTrafficRulesHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesHeaderValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectTestTrafficRulesHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrulesheader.html>
    ServiceConnectTestTrafficRulesHeaderProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrulesheader.html#cfn-ecs-service-serviceconnecttesttrafficrulesheader-name>
                                                  name :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrulesheader.html#cfn-ecs-service-serviceconnecttesttrafficrulesheader-value>
                                                  value :: (Prelude.Maybe ServiceConnectTestTrafficRulesHeaderValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectTestTrafficRulesHeaderProperty ::
  Value Prelude.Text -> ServiceConnectTestTrafficRulesHeaderProperty
mkServiceConnectTestTrafficRulesHeaderProperty name
  = ServiceConnectTestTrafficRulesHeaderProperty
      {haddock_workaround_ = (), name = name, value = Prelude.Nothing}
instance ToResourceProperties ServiceConnectTestTrafficRulesHeaderProperty where
  toResourceProperties
    ServiceConnectTestTrafficRulesHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectTestTrafficRulesHeader",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ServiceConnectTestTrafficRulesHeaderProperty where
  toJSON ServiceConnectTestTrafficRulesHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Name" ServiceConnectTestTrafficRulesHeaderProperty where
  type PropertyType "Name" ServiceConnectTestTrafficRulesHeaderProperty = Value Prelude.Text
  set newValue ServiceConnectTestTrafficRulesHeaderProperty {..}
    = ServiceConnectTestTrafficRulesHeaderProperty
        {name = newValue, ..}
instance Property "Value" ServiceConnectTestTrafficRulesHeaderProperty where
  type PropertyType "Value" ServiceConnectTestTrafficRulesHeaderProperty = ServiceConnectTestTrafficRulesHeaderValueProperty
  set newValue ServiceConnectTestTrafficRulesHeaderProperty {..}
    = ServiceConnectTestTrafficRulesHeaderProperty
        {value = Prelude.pure newValue, ..}