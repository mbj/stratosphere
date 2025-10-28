module Stratosphere.Kendra.Index.UserTokenConfigurationProperty (
        module Exports, UserTokenConfigurationProperty(..),
        mkUserTokenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.Index.JsonTokenTypeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.Index.JwtTokenTypeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data UserTokenConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-usertokenconfiguration.html>
    UserTokenConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-usertokenconfiguration.html#cfn-kendra-index-usertokenconfiguration-jsontokentypeconfiguration>
                                    jsonTokenTypeConfiguration :: (Prelude.Maybe JsonTokenTypeConfigurationProperty),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-usertokenconfiguration.html#cfn-kendra-index-usertokenconfiguration-jwttokentypeconfiguration>
                                    jwtTokenTypeConfiguration :: (Prelude.Maybe JwtTokenTypeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserTokenConfigurationProperty :: UserTokenConfigurationProperty
mkUserTokenConfigurationProperty
  = UserTokenConfigurationProperty
      {jsonTokenTypeConfiguration = Prelude.Nothing,
       jwtTokenTypeConfiguration = Prelude.Nothing}
instance ToResourceProperties UserTokenConfigurationProperty where
  toResourceProperties UserTokenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.UserTokenConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JsonTokenTypeConfiguration"
                              Prelude.<$> jsonTokenTypeConfiguration,
                            (JSON..=) "JwtTokenTypeConfiguration"
                              Prelude.<$> jwtTokenTypeConfiguration])}
instance JSON.ToJSON UserTokenConfigurationProperty where
  toJSON UserTokenConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JsonTokenTypeConfiguration"
                 Prelude.<$> jsonTokenTypeConfiguration,
               (JSON..=) "JwtTokenTypeConfiguration"
                 Prelude.<$> jwtTokenTypeConfiguration]))
instance Property "JsonTokenTypeConfiguration" UserTokenConfigurationProperty where
  type PropertyType "JsonTokenTypeConfiguration" UserTokenConfigurationProperty = JsonTokenTypeConfigurationProperty
  set newValue UserTokenConfigurationProperty {..}
    = UserTokenConfigurationProperty
        {jsonTokenTypeConfiguration = Prelude.pure newValue, ..}
instance Property "JwtTokenTypeConfiguration" UserTokenConfigurationProperty where
  type PropertyType "JwtTokenTypeConfiguration" UserTokenConfigurationProperty = JwtTokenTypeConfigurationProperty
  set newValue UserTokenConfigurationProperty {..}
    = UserTokenConfigurationProperty
        {jwtTokenTypeConfiguration = Prelude.pure newValue, ..}