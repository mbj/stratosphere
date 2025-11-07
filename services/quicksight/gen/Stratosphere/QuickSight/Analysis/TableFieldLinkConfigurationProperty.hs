module Stratosphere.QuickSight.Analysis.TableFieldLinkConfigurationProperty (
        module Exports, TableFieldLinkConfigurationProperty(..),
        mkTableFieldLinkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableFieldLinkContentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldLinkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldlinkconfiguration.html>
    TableFieldLinkConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldlinkconfiguration.html#cfn-quicksight-analysis-tablefieldlinkconfiguration-content>
                                         content :: TableFieldLinkContentConfigurationProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldlinkconfiguration.html#cfn-quicksight-analysis-tablefieldlinkconfiguration-target>
                                         target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldLinkConfigurationProperty ::
  TableFieldLinkContentConfigurationProperty
  -> Value Prelude.Text -> TableFieldLinkConfigurationProperty
mkTableFieldLinkConfigurationProperty content target
  = TableFieldLinkConfigurationProperty
      {haddock_workaround_ = (), content = content, target = target}
instance ToResourceProperties TableFieldLinkConfigurationProperty where
  toResourceProperties TableFieldLinkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableFieldLinkConfiguration",
         supportsTags = Prelude.False,
         properties = ["Content" JSON..= content, "Target" JSON..= target]}
instance JSON.ToJSON TableFieldLinkConfigurationProperty where
  toJSON TableFieldLinkConfigurationProperty {..}
    = JSON.object ["Content" JSON..= content, "Target" JSON..= target]
instance Property "Content" TableFieldLinkConfigurationProperty where
  type PropertyType "Content" TableFieldLinkConfigurationProperty = TableFieldLinkContentConfigurationProperty
  set newValue TableFieldLinkConfigurationProperty {..}
    = TableFieldLinkConfigurationProperty {content = newValue, ..}
instance Property "Target" TableFieldLinkConfigurationProperty where
  type PropertyType "Target" TableFieldLinkConfigurationProperty = Value Prelude.Text
  set newValue TableFieldLinkConfigurationProperty {..}
    = TableFieldLinkConfigurationProperty {target = newValue, ..}