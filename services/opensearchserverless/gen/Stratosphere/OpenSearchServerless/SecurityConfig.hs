module Stratosphere.OpenSearchServerless.SecurityConfig (
        module Exports, SecurityConfig(..), mkSecurityConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.SecurityConfig.IamIdentityCenterConfigOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.SecurityConfig.SamlConfigOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html>
    SecurityConfig {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html#cfn-opensearchserverless-securityconfig-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html#cfn-opensearchserverless-securityconfig-iamidentitycenteroptions>
                    iamIdentityCenterOptions :: (Prelude.Maybe IamIdentityCenterConfigOptionsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html#cfn-opensearchserverless-securityconfig-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html#cfn-opensearchserverless-securityconfig-samloptions>
                    samlOptions :: (Prelude.Maybe SamlConfigOptionsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securityconfig.html#cfn-opensearchserverless-securityconfig-type>
                    type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfig :: SecurityConfig
mkSecurityConfig
  = SecurityConfig
      {haddock_workaround_ = (), description = Prelude.Nothing,
       iamIdentityCenterOptions = Prelude.Nothing, name = Prelude.Nothing,
       samlOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties SecurityConfig where
  toResourceProperties SecurityConfig {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "IamIdentityCenterOptions"
                              Prelude.<$> iamIdentityCenterOptions,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SamlOptions" Prelude.<$> samlOptions,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON SecurityConfig where
  toJSON SecurityConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "IamIdentityCenterOptions"
                 Prelude.<$> iamIdentityCenterOptions,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SamlOptions" Prelude.<$> samlOptions,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Description" SecurityConfig where
  type PropertyType "Description" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {description = Prelude.pure newValue, ..}
instance Property "IamIdentityCenterOptions" SecurityConfig where
  type PropertyType "IamIdentityCenterOptions" SecurityConfig = IamIdentityCenterConfigOptionsProperty
  set newValue SecurityConfig {..}
    = SecurityConfig
        {iamIdentityCenterOptions = Prelude.pure newValue, ..}
instance Property "Name" SecurityConfig where
  type PropertyType "Name" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {name = Prelude.pure newValue, ..}
instance Property "SamlOptions" SecurityConfig where
  type PropertyType "SamlOptions" SecurityConfig = SamlConfigOptionsProperty
  set newValue SecurityConfig {..}
    = SecurityConfig {samlOptions = Prelude.pure newValue, ..}
instance Property "Type" SecurityConfig where
  type PropertyType "Type" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {type' = Prelude.pure newValue, ..}