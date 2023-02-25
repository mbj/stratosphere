module Stratosphere.SSMIncidents.ResponsePlan.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.SsmAutomationProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = ActionProperty {ssmAutomation :: (Prelude.Maybe SsmAutomationProperty)}
mkActionProperty :: ActionProperty
mkActionProperty = ActionProperty {ssmAutomation = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.Action",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SsmAutomation" Prelude.<$> ssmAutomation])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SsmAutomation" Prelude.<$> ssmAutomation]))
instance Property "SsmAutomation" ActionProperty where
  type PropertyType "SsmAutomation" ActionProperty = SsmAutomationProperty
  set newValue ActionProperty {}
    = ActionProperty {ssmAutomation = Prelude.pure newValue, ..}