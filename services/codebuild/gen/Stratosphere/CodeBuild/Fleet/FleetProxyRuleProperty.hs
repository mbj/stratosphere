module Stratosphere.CodeBuild.Fleet.FleetProxyRuleProperty (
        FleetProxyRuleProperty(..), mkFleetProxyRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetProxyRuleProperty
  = FleetProxyRuleProperty {effect :: (Prelude.Maybe (Value Prelude.Text)),
                            entities :: (Prelude.Maybe (ValueList Prelude.Text)),
                            type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetProxyRuleProperty :: FleetProxyRuleProperty
mkFleetProxyRuleProperty
  = FleetProxyRuleProperty
      {effect = Prelude.Nothing, entities = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties FleetProxyRuleProperty where
  toResourceProperties FleetProxyRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.FleetProxyRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Effect" Prelude.<$> effect,
                            (JSON..=) "Entities" Prelude.<$> entities,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON FleetProxyRuleProperty where
  toJSON FleetProxyRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Effect" Prelude.<$> effect,
               (JSON..=) "Entities" Prelude.<$> entities,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Effect" FleetProxyRuleProperty where
  type PropertyType "Effect" FleetProxyRuleProperty = Value Prelude.Text
  set newValue FleetProxyRuleProperty {..}
    = FleetProxyRuleProperty {effect = Prelude.pure newValue, ..}
instance Property "Entities" FleetProxyRuleProperty where
  type PropertyType "Entities" FleetProxyRuleProperty = ValueList Prelude.Text
  set newValue FleetProxyRuleProperty {..}
    = FleetProxyRuleProperty {entities = Prelude.pure newValue, ..}
instance Property "Type" FleetProxyRuleProperty where
  type PropertyType "Type" FleetProxyRuleProperty = Value Prelude.Text
  set newValue FleetProxyRuleProperty {..}
    = FleetProxyRuleProperty {type' = Prelude.pure newValue, ..}