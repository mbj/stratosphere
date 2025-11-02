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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html>
    JwtTokenTypeConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-claimregex>
                                       claimRegex :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-groupattributefield>
                                       groupAttributeField :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-issuer>
                                       issuer :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-keylocation>
                                       keyLocation :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-secretmanagerarn>
                                       secretManagerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-url>
                                       uRL :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jwttokentypeconfiguration.html#cfn-kendra-index-jwttokentypeconfiguration-usernameattributefield>
                                       userNameAttributeField :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJwtTokenTypeConfigurationProperty ::
  Value Prelude.Text -> JwtTokenTypeConfigurationProperty
mkJwtTokenTypeConfigurationProperty keyLocation
  = JwtTokenTypeConfigurationProperty
      {haddock_workaround_ = (), keyLocation = keyLocation,
       claimRegex = Prelude.Nothing,
       groupAttributeField = Prelude.Nothing, issuer = Prelude.Nothing,
       secretManagerArn = Prelude.Nothing, uRL = Prelude.Nothing,
       userNameAttributeField = Prelude.Nothing}
instance ToResourceProperties JwtTokenTypeConfigurationProperty where
  toResourceProperties JwtTokenTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.JwtTokenTypeConfiguration",
         supportsTags = Prelude.False,
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