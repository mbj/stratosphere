module Stratosphere.IoT.Authorizer (
        Authorizer(..), mkAuthorizer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Authorizer
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html>
    Authorizer {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-authorizerfunctionarn>
                authorizerFunctionArn :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-authorizername>
                authorizerName :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-enablecachingforhttp>
                enableCachingForHttp :: (Prelude.Maybe (Value Prelude.Bool)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-signingdisabled>
                signingDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-status>
                status :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-tokenkeyname>
                tokenKeyName :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-tokensigningpublickeys>
                tokenSigningPublicKeys :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizer :: Value Prelude.Text -> Authorizer
mkAuthorizer authorizerFunctionArn
  = Authorizer
      {authorizerFunctionArn = authorizerFunctionArn,
       authorizerName = Prelude.Nothing,
       enableCachingForHttp = Prelude.Nothing,
       signingDisabled = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing, tokenKeyName = Prelude.Nothing,
       tokenSigningPublicKeys = Prelude.Nothing}
instance ToResourceProperties Authorizer where
  toResourceProperties Authorizer {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Authorizer", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizerFunctionArn" JSON..= authorizerFunctionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizerName" Prelude.<$> authorizerName,
                               (JSON..=) "EnableCachingForHttp" Prelude.<$> enableCachingForHttp,
                               (JSON..=) "SigningDisabled" Prelude.<$> signingDisabled,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TokenKeyName" Prelude.<$> tokenKeyName,
                               (JSON..=) "TokenSigningPublicKeys"
                                 Prelude.<$> tokenSigningPublicKeys]))}
instance JSON.ToJSON Authorizer where
  toJSON Authorizer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizerFunctionArn" JSON..= authorizerFunctionArn]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizerName" Prelude.<$> authorizerName,
                  (JSON..=) "EnableCachingForHttp" Prelude.<$> enableCachingForHttp,
                  (JSON..=) "SigningDisabled" Prelude.<$> signingDisabled,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TokenKeyName" Prelude.<$> tokenKeyName,
                  (JSON..=) "TokenSigningPublicKeys"
                    Prelude.<$> tokenSigningPublicKeys])))
instance Property "AuthorizerFunctionArn" Authorizer where
  type PropertyType "AuthorizerFunctionArn" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerFunctionArn = newValue, ..}
instance Property "AuthorizerName" Authorizer where
  type PropertyType "AuthorizerName" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerName = Prelude.pure newValue, ..}
instance Property "EnableCachingForHttp" Authorizer where
  type PropertyType "EnableCachingForHttp" Authorizer = Value Prelude.Bool
  set newValue Authorizer {..}
    = Authorizer {enableCachingForHttp = Prelude.pure newValue, ..}
instance Property "SigningDisabled" Authorizer where
  type PropertyType "SigningDisabled" Authorizer = Value Prelude.Bool
  set newValue Authorizer {..}
    = Authorizer {signingDisabled = Prelude.pure newValue, ..}
instance Property "Status" Authorizer where
  type PropertyType "Status" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {status = Prelude.pure newValue, ..}
instance Property "Tags" Authorizer where
  type PropertyType "Tags" Authorizer = [Tag]
  set newValue Authorizer {..}
    = Authorizer {tags = Prelude.pure newValue, ..}
instance Property "TokenKeyName" Authorizer where
  type PropertyType "TokenKeyName" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {tokenKeyName = Prelude.pure newValue, ..}
instance Property "TokenSigningPublicKeys" Authorizer where
  type PropertyType "TokenSigningPublicKeys" Authorizer = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Authorizer {..}
    = Authorizer {tokenSigningPublicKeys = Prelude.pure newValue, ..}