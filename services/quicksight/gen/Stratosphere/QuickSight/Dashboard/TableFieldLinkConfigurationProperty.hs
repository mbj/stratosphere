module Stratosphere.QuickSight.Dashboard.TableFieldLinkConfigurationProperty (
        module Exports, TableFieldLinkConfigurationProperty(..),
        mkTableFieldLinkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableFieldLinkContentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldLinkConfigurationProperty
  = TableFieldLinkConfigurationProperty {content :: TableFieldLinkContentConfigurationProperty,
                                         target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldLinkConfigurationProperty ::
  TableFieldLinkContentConfigurationProperty
  -> Value Prelude.Text -> TableFieldLinkConfigurationProperty
mkTableFieldLinkConfigurationProperty content target
  = TableFieldLinkConfigurationProperty
      {content = content, target = target}
instance ToResourceProperties TableFieldLinkConfigurationProperty where
  toResourceProperties TableFieldLinkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableFieldLinkConfiguration",
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