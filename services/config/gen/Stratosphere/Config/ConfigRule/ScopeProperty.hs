module Stratosphere.Config.ConfigRule.ScopeProperty (
        ScopeProperty(..), mkScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScopeProperty
  = ScopeProperty {complianceResourceId :: (Prelude.Maybe (Value Prelude.Text)),
                   complianceResourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                   tagKey :: (Prelude.Maybe (Value Prelude.Text)),
                   tagValue :: (Prelude.Maybe (Value Prelude.Text))}
mkScopeProperty :: ScopeProperty
mkScopeProperty
  = ScopeProperty
      {complianceResourceId = Prelude.Nothing,
       complianceResourceTypes = Prelude.Nothing,
       tagKey = Prelude.Nothing, tagValue = Prelude.Nothing}
instance ToResourceProperties ScopeProperty where
  toResourceProperties ScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.Scope",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComplianceResourceId" Prelude.<$> complianceResourceId,
                            (JSON..=) "ComplianceResourceTypes"
                              Prelude.<$> complianceResourceTypes,
                            (JSON..=) "TagKey" Prelude.<$> tagKey,
                            (JSON..=) "TagValue" Prelude.<$> tagValue])}
instance JSON.ToJSON ScopeProperty where
  toJSON ScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComplianceResourceId" Prelude.<$> complianceResourceId,
               (JSON..=) "ComplianceResourceTypes"
                 Prelude.<$> complianceResourceTypes,
               (JSON..=) "TagKey" Prelude.<$> tagKey,
               (JSON..=) "TagValue" Prelude.<$> tagValue]))
instance Property "ComplianceResourceId" ScopeProperty where
  type PropertyType "ComplianceResourceId" ScopeProperty = Value Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty {complianceResourceId = Prelude.pure newValue, ..}
instance Property "ComplianceResourceTypes" ScopeProperty where
  type PropertyType "ComplianceResourceTypes" ScopeProperty = ValueList Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty
        {complianceResourceTypes = Prelude.pure newValue, ..}
instance Property "TagKey" ScopeProperty where
  type PropertyType "TagKey" ScopeProperty = Value Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty {tagKey = Prelude.pure newValue, ..}
instance Property "TagValue" ScopeProperty where
  type PropertyType "TagValue" ScopeProperty = Value Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty {tagValue = Prelude.pure newValue, ..}