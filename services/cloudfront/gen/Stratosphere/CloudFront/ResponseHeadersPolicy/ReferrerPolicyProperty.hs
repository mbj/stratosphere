module Stratosphere.CloudFront.ResponseHeadersPolicy.ReferrerPolicyProperty (
        ReferrerPolicyProperty(..), mkReferrerPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferrerPolicyProperty
  = ReferrerPolicyProperty {override :: (Value Prelude.Bool),
                            referrerPolicy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferrerPolicyProperty ::
  Value Prelude.Bool -> Value Prelude.Text -> ReferrerPolicyProperty
mkReferrerPolicyProperty override referrerPolicy
  = ReferrerPolicyProperty
      {override = override, referrerPolicy = referrerPolicy}
instance ToResourceProperties ReferrerPolicyProperty where
  toResourceProperties ReferrerPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ReferrerPolicy",
         supportsTags = Prelude.False,
         properties = ["Override" JSON..= override,
                       "ReferrerPolicy" JSON..= referrerPolicy]}
instance JSON.ToJSON ReferrerPolicyProperty where
  toJSON ReferrerPolicyProperty {..}
    = JSON.object
        ["Override" JSON..= override,
         "ReferrerPolicy" JSON..= referrerPolicy]
instance Property "Override" ReferrerPolicyProperty where
  type PropertyType "Override" ReferrerPolicyProperty = Value Prelude.Bool
  set newValue ReferrerPolicyProperty {..}
    = ReferrerPolicyProperty {override = newValue, ..}
instance Property "ReferrerPolicy" ReferrerPolicyProperty where
  type PropertyType "ReferrerPolicy" ReferrerPolicyProperty = Value Prelude.Text
  set newValue ReferrerPolicyProperty {..}
    = ReferrerPolicyProperty {referrerPolicy = newValue, ..}