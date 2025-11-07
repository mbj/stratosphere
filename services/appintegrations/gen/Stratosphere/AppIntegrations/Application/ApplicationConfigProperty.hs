module Stratosphere.AppIntegrations.Application.ApplicationConfigProperty (
        module Exports, ApplicationConfigProperty(..),
        mkApplicationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.ContactHandlingProperty as Exports
import Stratosphere.ResourceProperties
data ApplicationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationconfig.html>
    ApplicationConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationconfig.html#cfn-appintegrations-application-applicationconfig-contacthandling>
                               contactHandling :: (Prelude.Maybe ContactHandlingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationConfigProperty :: ApplicationConfigProperty
mkApplicationConfigProperty
  = ApplicationConfigProperty
      {haddock_workaround_ = (), contactHandling = Prelude.Nothing}
instance ToResourceProperties ApplicationConfigProperty where
  toResourceProperties ApplicationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.ApplicationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContactHandling" Prelude.<$> contactHandling])}
instance JSON.ToJSON ApplicationConfigProperty where
  toJSON ApplicationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContactHandling" Prelude.<$> contactHandling]))
instance Property "ContactHandling" ApplicationConfigProperty where
  type PropertyType "ContactHandling" ApplicationConfigProperty = ContactHandlingProperty
  set newValue ApplicationConfigProperty {..}
    = ApplicationConfigProperty
        {contactHandling = Prelude.pure newValue, ..}