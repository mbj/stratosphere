module Stratosphere.Grafana.Workspace.IdpMetadataProperty (
        IdpMetadataProperty(..), mkIdpMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdpMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-idpmetadata.html>
    IdpMetadataProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-idpmetadata.html#cfn-grafana-workspace-idpmetadata-url>
                         url :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-idpmetadata.html#cfn-grafana-workspace-idpmetadata-xml>
                         xml :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdpMetadataProperty :: IdpMetadataProperty
mkIdpMetadataProperty
  = IdpMetadataProperty
      {haddock_workaround_ = (), url = Prelude.Nothing,
       xml = Prelude.Nothing}
instance ToResourceProperties IdpMetadataProperty where
  toResourceProperties IdpMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace.IdpMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Url" Prelude.<$> url,
                            (JSON..=) "Xml" Prelude.<$> xml])}
instance JSON.ToJSON IdpMetadataProperty where
  toJSON IdpMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Url" Prelude.<$> url,
               (JSON..=) "Xml" Prelude.<$> xml]))
instance Property "Url" IdpMetadataProperty where
  type PropertyType "Url" IdpMetadataProperty = Value Prelude.Text
  set newValue IdpMetadataProperty {..}
    = IdpMetadataProperty {url = Prelude.pure newValue, ..}
instance Property "Xml" IdpMetadataProperty where
  type PropertyType "Xml" IdpMetadataProperty = Value Prelude.Text
  set newValue IdpMetadataProperty {..}
    = IdpMetadataProperty {xml = Prelude.pure newValue, ..}