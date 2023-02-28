module Stratosphere.Backup.Framework.ControlScopeProperty (
        ControlScopeProperty(..), mkControlScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ControlScopeProperty
  = ControlScopeProperty {complianceResourceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                          complianceResourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                          tags :: (Prelude.Maybe [Tag])}
mkControlScopeProperty :: ControlScopeProperty
mkControlScopeProperty
  = ControlScopeProperty
      {complianceResourceIds = Prelude.Nothing,
       complianceResourceTypes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ControlScopeProperty where
  toResourceProperties ControlScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::Framework.ControlScope",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComplianceResourceIds"
                              Prelude.<$> complianceResourceIds,
                            (JSON..=) "ComplianceResourceTypes"
                              Prelude.<$> complianceResourceTypes,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ControlScopeProperty where
  toJSON ControlScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComplianceResourceIds"
                 Prelude.<$> complianceResourceIds,
               (JSON..=) "ComplianceResourceTypes"
                 Prelude.<$> complianceResourceTypes,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ComplianceResourceIds" ControlScopeProperty where
  type PropertyType "ComplianceResourceIds" ControlScopeProperty = ValueList Prelude.Text
  set newValue ControlScopeProperty {..}
    = ControlScopeProperty
        {complianceResourceIds = Prelude.pure newValue, ..}
instance Property "ComplianceResourceTypes" ControlScopeProperty where
  type PropertyType "ComplianceResourceTypes" ControlScopeProperty = ValueList Prelude.Text
  set newValue ControlScopeProperty {..}
    = ControlScopeProperty
        {complianceResourceTypes = Prelude.pure newValue, ..}
instance Property "Tags" ControlScopeProperty where
  type PropertyType "Tags" ControlScopeProperty = [Tag]
  set newValue ControlScopeProperty {..}
    = ControlScopeProperty {tags = Prelude.pure newValue, ..}