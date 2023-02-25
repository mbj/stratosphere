module Stratosphere.Kendra.Index.JwtTokenTypeConfigurationProperty (
        JwtTokenTypeConfigurationProperty(..),
        mkJwtTokenTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JwtTokenTypeConfigurationProperty
  = JwtTokenTypeConfigurationProperty {claimRegex :: (Prelude.Maybe (Value Prelude.Text)),
                                       groupAttributeField :: (Prelude.Maybe (Value Prelude.Text)),
                                       issuer :: (Prelude.Maybe (Value Prelude.Text)),
                                       keyLocation :: (Value Prelude.Text),
                                       secretManagerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       uRL :: (Prelude.Maybe (Value Prelude.Text)),
                                       userNameAttributeField :: (Prelude.Maybe (Value Prelude.Text))}
mkJwtTokenTypeConfigurationProperty ::
  Value Prelude.Text -> JwtTokenTypeConfigurationProperty
mkJwtTokenTypeConfigurationProperty keyLocation
  = JwtTokenTypeConfigurationProperty
      {keyLocation = keyLocation, claimRegex = Prelude.Nothing,
       groupAttributeField = Prelude.Nothing, issuer = Prelude.Nothing,
       secretManagerArn = Prelude.Nothing, uRL = Prelude.Nothing,
       userNameAttributeField = Prelude.Nothing}
instance ToResourceProperties JwtTokenTypeConfigurationProperty where
  toResourceProperties JwtTokenTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.JwtTokenTypeConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyLocation" JSON..= keyLocation]
                           (Prelude.catMaybes
                              [(JSON..=) "ClaimRegex" Prelude.<$> claimRegex,
                               (JSON..=) "GroupAttributeField" Prelude.<$> groupAttributeField,
                               (JSON..=) "Issuer" Prelude.<$> issuer,
                               (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                               (JSON..=) "URL" Prelude.<$> uRL,
                               (JSON..=) "UserNameAttributeField"
                                 Prelude.<$> userNameAttributeField]))}
instance JSON.ToJSON JwtTokenTypeConfigurationProperty where
  toJSON JwtTokenTypeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyLocation" JSON..= keyLocation]
              (Prelude.catMaybes
                 [(JSON..=) "ClaimRegex" Prelude.<$> claimRegex,
                  (JSON..=) "GroupAttributeField" Prelude.<$> groupAttributeField,
                  (JSON..=) "Issuer" Prelude.<$> issuer,
                  (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                  (JSON..=) "URL" Prelude.<$> uRL,
                  (JSON..=) "UserNameAttributeField"
                    Prelude.<$> userNameAttributeField])))
instance Property "ClaimRegex" JwtTokenTypeConfigurationProperty where
  type PropertyType "ClaimRegex" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {claimRegex = Prelude.pure newValue, ..}
instance Property "GroupAttributeField" JwtTokenTypeConfigurationProperty where
  type PropertyType "GroupAttributeField" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {groupAttributeField = Prelude.pure newValue, ..}
instance Property "Issuer" JwtTokenTypeConfigurationProperty where
  type PropertyType "Issuer" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {issuer = Prelude.pure newValue, ..}
instance Property "KeyLocation" JwtTokenTypeConfigurationProperty where
  type PropertyType "KeyLocation" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty {keyLocation = newValue, ..}
instance Property "SecretManagerArn" JwtTokenTypeConfigurationProperty where
  type PropertyType "SecretManagerArn" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {secretManagerArn = Prelude.pure newValue, ..}
instance Property "URL" JwtTokenTypeConfigurationProperty where
  type PropertyType "URL" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {uRL = Prelude.pure newValue, ..}
instance Property "UserNameAttributeField" JwtTokenTypeConfigurationProperty where
  type PropertyType "UserNameAttributeField" JwtTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JwtTokenTypeConfigurationProperty {..}
    = JwtTokenTypeConfigurationProperty
        {userNameAttributeField = Prelude.pure newValue, ..}