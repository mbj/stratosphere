module Stratosphere.CloudFront.OriginAccessControl.OriginAccessControlConfigProperty (
        OriginAccessControlConfigProperty(..),
        mkOriginAccessControlConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginAccessControlConfigProperty
  = OriginAccessControlConfigProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                                       name :: (Value Prelude.Text),
                                       originAccessControlOriginType :: (Value Prelude.Text),
                                       signingBehavior :: (Value Prelude.Text),
                                       signingProtocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginAccessControlConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> OriginAccessControlConfigProperty
mkOriginAccessControlConfigProperty
  name
  originAccessControlOriginType
  signingBehavior
  signingProtocol
  = OriginAccessControlConfigProperty
      {name = name,
       originAccessControlOriginType = originAccessControlOriginType,
       signingBehavior = signingBehavior,
       signingProtocol = signingProtocol, description = Prelude.Nothing}
instance ToResourceProperties OriginAccessControlConfigProperty where
  toResourceProperties OriginAccessControlConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginAccessControl.OriginAccessControlConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "OriginAccessControlOriginType"
                              JSON..= originAccessControlOriginType,
                            "SigningBehavior" JSON..= signingBehavior,
                            "SigningProtocol" JSON..= signingProtocol]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON OriginAccessControlConfigProperty where
  toJSON OriginAccessControlConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "OriginAccessControlOriginType"
                 JSON..= originAccessControlOriginType,
               "SigningBehavior" JSON..= signingBehavior,
               "SigningProtocol" JSON..= signingProtocol]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" OriginAccessControlConfigProperty where
  type PropertyType "Description" OriginAccessControlConfigProperty = Value Prelude.Text
  set newValue OriginAccessControlConfigProperty {..}
    = OriginAccessControlConfigProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" OriginAccessControlConfigProperty where
  type PropertyType "Name" OriginAccessControlConfigProperty = Value Prelude.Text
  set newValue OriginAccessControlConfigProperty {..}
    = OriginAccessControlConfigProperty {name = newValue, ..}
instance Property "OriginAccessControlOriginType" OriginAccessControlConfigProperty where
  type PropertyType "OriginAccessControlOriginType" OriginAccessControlConfigProperty = Value Prelude.Text
  set newValue OriginAccessControlConfigProperty {..}
    = OriginAccessControlConfigProperty
        {originAccessControlOriginType = newValue, ..}
instance Property "SigningBehavior" OriginAccessControlConfigProperty where
  type PropertyType "SigningBehavior" OriginAccessControlConfigProperty = Value Prelude.Text
  set newValue OriginAccessControlConfigProperty {..}
    = OriginAccessControlConfigProperty
        {signingBehavior = newValue, ..}
instance Property "SigningProtocol" OriginAccessControlConfigProperty where
  type PropertyType "SigningProtocol" OriginAccessControlConfigProperty = Value Prelude.Text
  set newValue OriginAccessControlConfigProperty {..}
    = OriginAccessControlConfigProperty
        {signingProtocol = newValue, ..}