module Stratosphere.IoT.DomainConfiguration.AuthorizerConfigProperty (
        AuthorizerConfigProperty(..), mkAuthorizerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizerConfigProperty
  = AuthorizerConfigProperty {allowAuthorizerOverride :: (Prelude.Maybe (Value Prelude.Bool)),
                              defaultAuthorizerName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizerConfigProperty :: AuthorizerConfigProperty
mkAuthorizerConfigProperty
  = AuthorizerConfigProperty
      {allowAuthorizerOverride = Prelude.Nothing,
       defaultAuthorizerName = Prelude.Nothing}
instance ToResourceProperties AuthorizerConfigProperty where
  toResourceProperties AuthorizerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.AuthorizerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowAuthorizerOverride"
                              Prelude.<$> allowAuthorizerOverride,
                            (JSON..=) "DefaultAuthorizerName"
                              Prelude.<$> defaultAuthorizerName])}
instance JSON.ToJSON AuthorizerConfigProperty where
  toJSON AuthorizerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowAuthorizerOverride"
                 Prelude.<$> allowAuthorizerOverride,
               (JSON..=) "DefaultAuthorizerName"
                 Prelude.<$> defaultAuthorizerName]))
instance Property "AllowAuthorizerOverride" AuthorizerConfigProperty where
  type PropertyType "AllowAuthorizerOverride" AuthorizerConfigProperty = Value Prelude.Bool
  set newValue AuthorizerConfigProperty {..}
    = AuthorizerConfigProperty
        {allowAuthorizerOverride = Prelude.pure newValue, ..}
instance Property "DefaultAuthorizerName" AuthorizerConfigProperty where
  type PropertyType "DefaultAuthorizerName" AuthorizerConfigProperty = Value Prelude.Text
  set newValue AuthorizerConfigProperty {..}
    = AuthorizerConfigProperty
        {defaultAuthorizerName = Prelude.pure newValue, ..}