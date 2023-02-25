module Stratosphere.IoT.TopicRule.HttpAuthorizationProperty (
        module Exports, HttpAuthorizationProperty(..),
        mkHttpAuthorizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.SigV4AuthorizationProperty as Exports
import Stratosphere.ResourceProperties
data HttpAuthorizationProperty
  = HttpAuthorizationProperty {sigv4 :: (Prelude.Maybe SigV4AuthorizationProperty)}
mkHttpAuthorizationProperty :: HttpAuthorizationProperty
mkHttpAuthorizationProperty
  = HttpAuthorizationProperty {sigv4 = Prelude.Nothing}
instance ToResourceProperties HttpAuthorizationProperty where
  toResourceProperties HttpAuthorizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.HttpAuthorization",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Sigv4" Prelude.<$> sigv4])}
instance JSON.ToJSON HttpAuthorizationProperty where
  toJSON HttpAuthorizationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Sigv4" Prelude.<$> sigv4]))
instance Property "Sigv4" HttpAuthorizationProperty where
  type PropertyType "Sigv4" HttpAuthorizationProperty = SigV4AuthorizationProperty
  set newValue HttpAuthorizationProperty {}
    = HttpAuthorizationProperty {sigv4 = Prelude.pure newValue, ..}