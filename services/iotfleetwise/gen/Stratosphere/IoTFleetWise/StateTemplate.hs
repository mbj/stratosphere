module Stratosphere.IoTFleetWise.StateTemplate (
        StateTemplate(..), mkStateTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StateTemplate
  = StateTemplate {dataExtraDimensions :: (Prelude.Maybe (ValueList Prelude.Text)),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   metadataExtraDimensions :: (Prelude.Maybe (ValueList Prelude.Text)),
                   name :: (Value Prelude.Text),
                   signalCatalogArn :: (Value Prelude.Text),
                   stateTemplateProperties :: (ValueList Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValueList Prelude.Text -> StateTemplate
mkStateTemplate name signalCatalogArn stateTemplateProperties
  = StateTemplate
      {name = name, signalCatalogArn = signalCatalogArn,
       stateTemplateProperties = stateTemplateProperties,
       dataExtraDimensions = Prelude.Nothing,
       description = Prelude.Nothing,
       metadataExtraDimensions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StateTemplate where
  toResourceProperties StateTemplate {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::StateTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SignalCatalogArn" JSON..= signalCatalogArn,
                            "StateTemplateProperties" JSON..= stateTemplateProperties]
                           (Prelude.catMaybes
                              [(JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MetadataExtraDimensions"
                                 Prelude.<$> metadataExtraDimensions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StateTemplate where
  toJSON StateTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SignalCatalogArn" JSON..= signalCatalogArn,
               "StateTemplateProperties" JSON..= stateTemplateProperties]
              (Prelude.catMaybes
                 [(JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MetadataExtraDimensions"
                    Prelude.<$> metadataExtraDimensions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataExtraDimensions" StateTemplate where
  type PropertyType "DataExtraDimensions" StateTemplate = ValueList Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate {dataExtraDimensions = Prelude.pure newValue, ..}
instance Property "Description" StateTemplate where
  type PropertyType "Description" StateTemplate = Value Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate {description = Prelude.pure newValue, ..}
instance Property "MetadataExtraDimensions" StateTemplate where
  type PropertyType "MetadataExtraDimensions" StateTemplate = ValueList Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate
        {metadataExtraDimensions = Prelude.pure newValue, ..}
instance Property "Name" StateTemplate where
  type PropertyType "Name" StateTemplate = Value Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate {name = newValue, ..}
instance Property "SignalCatalogArn" StateTemplate where
  type PropertyType "SignalCatalogArn" StateTemplate = Value Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate {signalCatalogArn = newValue, ..}
instance Property "StateTemplateProperties" StateTemplate where
  type PropertyType "StateTemplateProperties" StateTemplate = ValueList Prelude.Text
  set newValue StateTemplate {..}
    = StateTemplate {stateTemplateProperties = newValue, ..}
instance Property "Tags" StateTemplate where
  type PropertyType "Tags" StateTemplate = [Tag]
  set newValue StateTemplate {..}
    = StateTemplate {tags = Prelude.pure newValue, ..}