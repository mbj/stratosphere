module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.NotifyConfigurationTypeProperty (
        module Exports, NotifyConfigurationTypeProperty(..),
        mkNotifyConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.NotifyEmailTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotifyConfigurationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html>
    NotifyConfigurationTypeProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-blockemail>
                                     blockEmail :: (Prelude.Maybe NotifyEmailTypeProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-from>
                                     from :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-mfaemail>
                                     mfaEmail :: (Prelude.Maybe NotifyEmailTypeProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-noactionemail>
                                     noActionEmail :: (Prelude.Maybe NotifyEmailTypeProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-replyto>
                                     replyTo :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-sourcearn>
                                     sourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotifyConfigurationTypeProperty ::
  Value Prelude.Text -> NotifyConfigurationTypeProperty
mkNotifyConfigurationTypeProperty sourceArn
  = NotifyConfigurationTypeProperty
      {haddock_workaround_ = (), sourceArn = sourceArn,
       blockEmail = Prelude.Nothing, from = Prelude.Nothing,
       mfaEmail = Prelude.Nothing, noActionEmail = Prelude.Nothing,
       replyTo = Prelude.Nothing}
instance ToResourceProperties NotifyConfigurationTypeProperty where
  toResourceProperties NotifyConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyConfigurationType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceArn" JSON..= sourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockEmail" Prelude.<$> blockEmail,
                               (JSON..=) "From" Prelude.<$> from,
                               (JSON..=) "MfaEmail" Prelude.<$> mfaEmail,
                               (JSON..=) "NoActionEmail" Prelude.<$> noActionEmail,
                               (JSON..=) "ReplyTo" Prelude.<$> replyTo]))}
instance JSON.ToJSON NotifyConfigurationTypeProperty where
  toJSON NotifyConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceArn" JSON..= sourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "BlockEmail" Prelude.<$> blockEmail,
                  (JSON..=) "From" Prelude.<$> from,
                  (JSON..=) "MfaEmail" Prelude.<$> mfaEmail,
                  (JSON..=) "NoActionEmail" Prelude.<$> noActionEmail,
                  (JSON..=) "ReplyTo" Prelude.<$> replyTo])))
instance Property "BlockEmail" NotifyConfigurationTypeProperty where
  type PropertyType "BlockEmail" NotifyConfigurationTypeProperty = NotifyEmailTypeProperty
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty
        {blockEmail = Prelude.pure newValue, ..}
instance Property "From" NotifyConfigurationTypeProperty where
  type PropertyType "From" NotifyConfigurationTypeProperty = Value Prelude.Text
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty
        {from = Prelude.pure newValue, ..}
instance Property "MfaEmail" NotifyConfigurationTypeProperty where
  type PropertyType "MfaEmail" NotifyConfigurationTypeProperty = NotifyEmailTypeProperty
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty
        {mfaEmail = Prelude.pure newValue, ..}
instance Property "NoActionEmail" NotifyConfigurationTypeProperty where
  type PropertyType "NoActionEmail" NotifyConfigurationTypeProperty = NotifyEmailTypeProperty
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty
        {noActionEmail = Prelude.pure newValue, ..}
instance Property "ReplyTo" NotifyConfigurationTypeProperty where
  type PropertyType "ReplyTo" NotifyConfigurationTypeProperty = Value Prelude.Text
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty
        {replyTo = Prelude.pure newValue, ..}
instance Property "SourceArn" NotifyConfigurationTypeProperty where
  type PropertyType "SourceArn" NotifyConfigurationTypeProperty = Value Prelude.Text
  set newValue NotifyConfigurationTypeProperty {..}
    = NotifyConfigurationTypeProperty {sourceArn = newValue, ..}