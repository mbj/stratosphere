module Stratosphere.QuickSight.Dashboard.TableFieldLinkContentConfigurationProperty (
        module Exports, TableFieldLinkContentConfigurationProperty(..),
        mkTableFieldLinkContentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableFieldCustomIconContentProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableFieldCustomTextContentProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldLinkContentConfigurationProperty
  = TableFieldLinkContentConfigurationProperty {customIconContent :: (Prelude.Maybe TableFieldCustomIconContentProperty),
                                                customTextContent :: (Prelude.Maybe TableFieldCustomTextContentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldLinkContentConfigurationProperty ::
  TableFieldLinkContentConfigurationProperty
mkTableFieldLinkContentConfigurationProperty
  = TableFieldLinkContentConfigurationProperty
      {customIconContent = Prelude.Nothing,
       customTextContent = Prelude.Nothing}
instance ToResourceProperties TableFieldLinkContentConfigurationProperty where
  toResourceProperties
    TableFieldLinkContentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableFieldLinkContentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomIconContent" Prelude.<$> customIconContent,
                            (JSON..=) "CustomTextContent" Prelude.<$> customTextContent])}
instance JSON.ToJSON TableFieldLinkContentConfigurationProperty where
  toJSON TableFieldLinkContentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomIconContent" Prelude.<$> customIconContent,
               (JSON..=) "CustomTextContent" Prelude.<$> customTextContent]))
instance Property "CustomIconContent" TableFieldLinkContentConfigurationProperty where
  type PropertyType "CustomIconContent" TableFieldLinkContentConfigurationProperty = TableFieldCustomIconContentProperty
  set newValue TableFieldLinkContentConfigurationProperty {..}
    = TableFieldLinkContentConfigurationProperty
        {customIconContent = Prelude.pure newValue, ..}
instance Property "CustomTextContent" TableFieldLinkContentConfigurationProperty where
  type PropertyType "CustomTextContent" TableFieldLinkContentConfigurationProperty = TableFieldCustomTextContentProperty
  set newValue TableFieldLinkContentConfigurationProperty {..}
    = TableFieldLinkContentConfigurationProperty
        {customTextContent = Prelude.pure newValue, ..}