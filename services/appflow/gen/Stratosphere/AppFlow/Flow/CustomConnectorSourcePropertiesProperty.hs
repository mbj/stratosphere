module Stratosphere.AppFlow.Flow.CustomConnectorSourcePropertiesProperty (
        module Exports, CustomConnectorSourcePropertiesProperty(..),
        mkCustomConnectorSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.DataTransferApiProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomConnectorSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectorsourceproperties.html>
    CustomConnectorSourcePropertiesProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectorsourceproperties.html#cfn-appflow-flow-customconnectorsourceproperties-customproperties>
                                             customProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectorsourceproperties.html#cfn-appflow-flow-customconnectorsourceproperties-datatransferapi>
                                             dataTransferApi :: (Prelude.Maybe DataTransferApiProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectorsourceproperties.html#cfn-appflow-flow-customconnectorsourceproperties-entityname>
                                             entityName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomConnectorSourcePropertiesProperty ::
  Value Prelude.Text -> CustomConnectorSourcePropertiesProperty
mkCustomConnectorSourcePropertiesProperty entityName
  = CustomConnectorSourcePropertiesProperty
      {haddock_workaround_ = (), entityName = entityName,
       customProperties = Prelude.Nothing,
       dataTransferApi = Prelude.Nothing}
instance ToResourceProperties CustomConnectorSourcePropertiesProperty where
  toResourceProperties CustomConnectorSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.CustomConnectorSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityName" JSON..= entityName]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomProperties" Prelude.<$> customProperties,
                               (JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi]))}
instance JSON.ToJSON CustomConnectorSourcePropertiesProperty where
  toJSON CustomConnectorSourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityName" JSON..= entityName]
              (Prelude.catMaybes
                 [(JSON..=) "CustomProperties" Prelude.<$> customProperties,
                  (JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi])))
instance Property "CustomProperties" CustomConnectorSourcePropertiesProperty where
  type PropertyType "CustomProperties" CustomConnectorSourcePropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomConnectorSourcePropertiesProperty {..}
    = CustomConnectorSourcePropertiesProperty
        {customProperties = Prelude.pure newValue, ..}
instance Property "DataTransferApi" CustomConnectorSourcePropertiesProperty where
  type PropertyType "DataTransferApi" CustomConnectorSourcePropertiesProperty = DataTransferApiProperty
  set newValue CustomConnectorSourcePropertiesProperty {..}
    = CustomConnectorSourcePropertiesProperty
        {dataTransferApi = Prelude.pure newValue, ..}
instance Property "EntityName" CustomConnectorSourcePropertiesProperty where
  type PropertyType "EntityName" CustomConnectorSourcePropertiesProperty = Value Prelude.Text
  set newValue CustomConnectorSourcePropertiesProperty {..}
    = CustomConnectorSourcePropertiesProperty
        {entityName = newValue, ..}