module Stratosphere.InspectorV2.CodeSecurityIntegration (
        module Exports, CodeSecurityIntegration(..),
        mkCodeSecurityIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityIntegration.CreateDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeSecurityIntegration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html>
    CodeSecurityIntegration {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html#cfn-inspectorv2-codesecurityintegration-createintegrationdetails>
                             createIntegrationDetails :: (Prelude.Maybe CreateDetailsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html#cfn-inspectorv2-codesecurityintegration-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html#cfn-inspectorv2-codesecurityintegration-tags>
                             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html#cfn-inspectorv2-codesecurityintegration-type>
                             type' :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityintegration.html#cfn-inspectorv2-codesecurityintegration-updateintegrationdetails>
                             updateIntegrationDetails :: (Prelude.Maybe UpdateDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSecurityIntegration :: CodeSecurityIntegration
mkCodeSecurityIntegration
  = CodeSecurityIntegration
      {haddock_workaround_ = (),
       createIntegrationDetails = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing,
       updateIntegrationDetails = Prelude.Nothing}
instance ToResourceProperties CodeSecurityIntegration where
  toResourceProperties CodeSecurityIntegration {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreateIntegrationDetails"
                              Prelude.<$> createIntegrationDetails,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UpdateIntegrationDetails"
                              Prelude.<$> updateIntegrationDetails])}
instance JSON.ToJSON CodeSecurityIntegration where
  toJSON CodeSecurityIntegration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreateIntegrationDetails"
                 Prelude.<$> createIntegrationDetails,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UpdateIntegrationDetails"
                 Prelude.<$> updateIntegrationDetails]))
instance Property "CreateIntegrationDetails" CodeSecurityIntegration where
  type PropertyType "CreateIntegrationDetails" CodeSecurityIntegration = CreateDetailsProperty
  set newValue CodeSecurityIntegration {..}
    = CodeSecurityIntegration
        {createIntegrationDetails = Prelude.pure newValue, ..}
instance Property "Name" CodeSecurityIntegration where
  type PropertyType "Name" CodeSecurityIntegration = Value Prelude.Text
  set newValue CodeSecurityIntegration {..}
    = CodeSecurityIntegration {name = Prelude.pure newValue, ..}
instance Property "Tags" CodeSecurityIntegration where
  type PropertyType "Tags" CodeSecurityIntegration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CodeSecurityIntegration {..}
    = CodeSecurityIntegration {tags = Prelude.pure newValue, ..}
instance Property "Type" CodeSecurityIntegration where
  type PropertyType "Type" CodeSecurityIntegration = Value Prelude.Text
  set newValue CodeSecurityIntegration {..}
    = CodeSecurityIntegration {type' = Prelude.pure newValue, ..}
instance Property "UpdateIntegrationDetails" CodeSecurityIntegration where
  type PropertyType "UpdateIntegrationDetails" CodeSecurityIntegration = UpdateDetailsProperty
  set newValue CodeSecurityIntegration {..}
    = CodeSecurityIntegration
        {updateIntegrationDetails = Prelude.pure newValue, ..}