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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html>
    Template {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html#cfn-pcaconnectorad-template-connectorarn>
              connectorArn :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html#cfn-pcaconnectorad-template-definition>
              definition :: TemplateDefinitionProperty,
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html#cfn-pcaconnectorad-template-name>
              name :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html#cfn-pcaconnectorad-template-reenrollallcertificateholders>
              reenrollAllCertificateHolders :: (Prelude.Maybe (Value Prelude.Bool)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-template.html#cfn-pcaconnectorad-template-tags>
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