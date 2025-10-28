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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html>
    ControlScopeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-complianceresourceids>
                          complianceResourceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-complianceresourcetypes>
                          complianceResourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlScopeProperty :: ControlScopeProperty
mkControlScopeProperty
  = ControlScopeProperty
      {haddock_workaround_ = (), complianceResourceIds = Prelude.Nothing,
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