module Stratosphere.SSO.Application.PortalOptionsConfigurationProperty (
        module Exports, PortalOptionsConfigurationProperty(..),
        mkPortalOptionsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.Application.SignInOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortalOptionsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-application-portaloptionsconfiguration.html>
    PortalOptionsConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-application-portaloptionsconfiguration.html#cfn-sso-application-portaloptionsconfiguration-signinoptions>
                                        signInOptions :: (Prelude.Maybe SignInOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-application-portaloptionsconfiguration.html#cfn-sso-application-portaloptionsconfiguration-visibility>
                                        visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortalOptionsConfigurationProperty ::
  PortalOptionsConfigurationProperty
mkPortalOptionsConfigurationProperty
  = PortalOptionsConfigurationProperty
      {haddock_workaround_ = (), signInOptions = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties PortalOptionsConfigurationProperty where
  toResourceProperties PortalOptionsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::Application.PortalOptionsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SignInOptions" Prelude.<$> signInOptions,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON PortalOptionsConfigurationProperty where
  toJSON PortalOptionsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SignInOptions" Prelude.<$> signInOptions,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "SignInOptions" PortalOptionsConfigurationProperty where
  type PropertyType "SignInOptions" PortalOptionsConfigurationProperty = SignInOptionsProperty
  set newValue PortalOptionsConfigurationProperty {..}
    = PortalOptionsConfigurationProperty
        {signInOptions = Prelude.pure newValue, ..}
instance Property "Visibility" PortalOptionsConfigurationProperty where
  type PropertyType "Visibility" PortalOptionsConfigurationProperty = Value Prelude.Text
  set newValue PortalOptionsConfigurationProperty {..}
    = PortalOptionsConfigurationProperty
        {visibility = Prelude.pure newValue, ..}