module Stratosphere.CloudFront.ResponseHeadersPolicy.ResponseHeadersPolicyConfigProperty (
        module Exports, ResponseHeadersPolicyConfigProperty(..),
        mkResponseHeadersPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.CorsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeadersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeadersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.SecurityHeadersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.ServerTimingHeadersConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseHeadersPolicyConfigProperty
  = ResponseHeadersPolicyConfigProperty {comment :: (Prelude.Maybe (Value Prelude.Text)),
                                         corsConfig :: (Prelude.Maybe CorsConfigProperty),
                                         customHeadersConfig :: (Prelude.Maybe CustomHeadersConfigProperty),
                                         name :: (Value Prelude.Text),
                                         removeHeadersConfig :: (Prelude.Maybe RemoveHeadersConfigProperty),
                                         securityHeadersConfig :: (Prelude.Maybe SecurityHeadersConfigProperty),
                                         serverTimingHeadersConfig :: (Prelude.Maybe ServerTimingHeadersConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseHeadersPolicyConfigProperty ::
  Value Prelude.Text -> ResponseHeadersPolicyConfigProperty
mkResponseHeadersPolicyConfigProperty name
  = ResponseHeadersPolicyConfigProperty
      {name = name, comment = Prelude.Nothing,
       corsConfig = Prelude.Nothing,
       customHeadersConfig = Prelude.Nothing,
       removeHeadersConfig = Prelude.Nothing,
       securityHeadersConfig = Prelude.Nothing,
       serverTimingHeadersConfig = Prelude.Nothing}
instance ToResourceProperties ResponseHeadersPolicyConfigProperty where
  toResourceProperties ResponseHeadersPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ResponseHeadersPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Comment" Prelude.<$> comment,
                               (JSON..=) "CorsConfig" Prelude.<$> corsConfig,
                               (JSON..=) "CustomHeadersConfig" Prelude.<$> customHeadersConfig,
                               (JSON..=) "RemoveHeadersConfig" Prelude.<$> removeHeadersConfig,
                               (JSON..=) "SecurityHeadersConfig"
                                 Prelude.<$> securityHeadersConfig,
                               (JSON..=) "ServerTimingHeadersConfig"
                                 Prelude.<$> serverTimingHeadersConfig]))}
instance JSON.ToJSON ResponseHeadersPolicyConfigProperty where
  toJSON ResponseHeadersPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Comment" Prelude.<$> comment,
                  (JSON..=) "CorsConfig" Prelude.<$> corsConfig,
                  (JSON..=) "CustomHeadersConfig" Prelude.<$> customHeadersConfig,
                  (JSON..=) "RemoveHeadersConfig" Prelude.<$> removeHeadersConfig,
                  (JSON..=) "SecurityHeadersConfig"
                    Prelude.<$> securityHeadersConfig,
                  (JSON..=) "ServerTimingHeadersConfig"
                    Prelude.<$> serverTimingHeadersConfig])))
instance Property "Comment" ResponseHeadersPolicyConfigProperty where
  type PropertyType "Comment" ResponseHeadersPolicyConfigProperty = Value Prelude.Text
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {comment = Prelude.pure newValue, ..}
instance Property "CorsConfig" ResponseHeadersPolicyConfigProperty where
  type PropertyType "CorsConfig" ResponseHeadersPolicyConfigProperty = CorsConfigProperty
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {corsConfig = Prelude.pure newValue, ..}
instance Property "CustomHeadersConfig" ResponseHeadersPolicyConfigProperty where
  type PropertyType "CustomHeadersConfig" ResponseHeadersPolicyConfigProperty = CustomHeadersConfigProperty
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {customHeadersConfig = Prelude.pure newValue, ..}
instance Property "Name" ResponseHeadersPolicyConfigProperty where
  type PropertyType "Name" ResponseHeadersPolicyConfigProperty = Value Prelude.Text
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty {name = newValue, ..}
instance Property "RemoveHeadersConfig" ResponseHeadersPolicyConfigProperty where
  type PropertyType "RemoveHeadersConfig" ResponseHeadersPolicyConfigProperty = RemoveHeadersConfigProperty
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {removeHeadersConfig = Prelude.pure newValue, ..}
instance Property "SecurityHeadersConfig" ResponseHeadersPolicyConfigProperty where
  type PropertyType "SecurityHeadersConfig" ResponseHeadersPolicyConfigProperty = SecurityHeadersConfigProperty
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {securityHeadersConfig = Prelude.pure newValue, ..}
instance Property "ServerTimingHeadersConfig" ResponseHeadersPolicyConfigProperty where
  type PropertyType "ServerTimingHeadersConfig" ResponseHeadersPolicyConfigProperty = ServerTimingHeadersConfigProperty
  set newValue ResponseHeadersPolicyConfigProperty {..}
    = ResponseHeadersPolicyConfigProperty
        {serverTimingHeadersConfig = Prelude.pure newValue, ..}