module Stratosphere.PCAConnectorAD.Template (
        module Exports, Template(..), mkTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.TemplateDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Template
  = Template {connectorArn :: (Value Prelude.Text),
              definition :: TemplateDefinitionProperty,
              name :: (Value Prelude.Text),
              reenrollAllCertificateHolders :: (Prelude.Maybe (Value Prelude.Bool)),
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplate ::
  Value Prelude.Text
  -> TemplateDefinitionProperty -> Value Prelude.Text -> Template
mkTemplate connectorArn definition name
  = Template
      {connectorArn = connectorArn, definition = definition, name = name,
       reenrollAllCertificateHolders = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Template where
  toResourceProperties Template {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorArn" JSON..= connectorArn,
                            "Definition" JSON..= definition, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ReenrollAllCertificateHolders"
                                 Prelude.<$> reenrollAllCertificateHolders,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Template where
  toJSON Template {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorArn" JSON..= connectorArn,
               "Definition" JSON..= definition, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ReenrollAllCertificateHolders"
                    Prelude.<$> reenrollAllCertificateHolders,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectorArn" Template where
  type PropertyType "ConnectorArn" Template = Value Prelude.Text
  set newValue Template {..} = Template {connectorArn = newValue, ..}
instance Property "Definition" Template where
  type PropertyType "Definition" Template = TemplateDefinitionProperty
  set newValue Template {..} = Template {definition = newValue, ..}
instance Property "Name" Template where
  type PropertyType "Name" Template = Value Prelude.Text
  set newValue Template {..} = Template {name = newValue, ..}
instance Property "ReenrollAllCertificateHolders" Template where
  type PropertyType "ReenrollAllCertificateHolders" Template = Value Prelude.Bool
  set newValue Template {..}
    = Template
        {reenrollAllCertificateHolders = Prelude.pure newValue, ..}
instance Property "Tags" Template where
  type PropertyType "Tags" Template = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Template {..}
    = Template {tags = Prelude.pure newValue, ..}