module Stratosphere.QBusiness.Index (
        module Exports, Index(..), mkIndex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Index.DocumentAttributeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Index.IndexCapacityConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Index
  = Index {applicationId :: (Value Prelude.Text),
           capacityConfiguration :: (Prelude.Maybe IndexCapacityConfigurationProperty),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           displayName :: (Value Prelude.Text),
           documentAttributeConfigurations :: (Prelude.Maybe [DocumentAttributeConfigurationProperty]),
           tags :: (Prelude.Maybe [Tag]),
           type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndex :: Value Prelude.Text -> Value Prelude.Text -> Index
mkIndex applicationId displayName
  = Index
      {applicationId = applicationId, displayName = displayName,
       capacityConfiguration = Prelude.Nothing,
       description = Prelude.Nothing,
       documentAttributeConfigurations = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties Index where
  toResourceProperties Index {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "DisplayName" JSON..= displayName]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityConfiguration"
                                 Prelude.<$> capacityConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DocumentAttributeConfigurations"
                                 Prelude.<$> documentAttributeConfigurations,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON Index where
  toJSON Index {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "DisplayName" JSON..= displayName]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityConfiguration"
                    Prelude.<$> capacityConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DocumentAttributeConfigurations"
                    Prelude.<$> documentAttributeConfigurations,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "ApplicationId" Index where
  type PropertyType "ApplicationId" Index = Value Prelude.Text
  set newValue Index {..} = Index {applicationId = newValue, ..}
instance Property "CapacityConfiguration" Index where
  type PropertyType "CapacityConfiguration" Index = IndexCapacityConfigurationProperty
  set newValue Index {..}
    = Index {capacityConfiguration = Prelude.pure newValue, ..}
instance Property "Description" Index where
  type PropertyType "Description" Index = Value Prelude.Text
  set newValue Index {..}
    = Index {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Index where
  type PropertyType "DisplayName" Index = Value Prelude.Text
  set newValue Index {..} = Index {displayName = newValue, ..}
instance Property "DocumentAttributeConfigurations" Index where
  type PropertyType "DocumentAttributeConfigurations" Index = [DocumentAttributeConfigurationProperty]
  set newValue Index {..}
    = Index
        {documentAttributeConfigurations = Prelude.pure newValue, ..}
instance Property "Tags" Index where
  type PropertyType "Tags" Index = [Tag]
  set newValue Index {..} = Index {tags = Prelude.pure newValue, ..}
instance Property "Type" Index where
  type PropertyType "Type" Index = Value Prelude.Text
  set newValue Index {..} = Index {type' = Prelude.pure newValue, ..}