module Stratosphere.WorkSpacesWeb.SessionLogger (
        module Exports, SessionLogger(..), mkSessionLogger
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.SessionLogger.EventFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.SessionLogger.LogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SessionLogger
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html>
    SessionLogger {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-additionalencryptioncontext>
                   additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-customermanagedkey>
                   customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-displayname>
                   displayName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-eventfilter>
                   eventFilter :: EventFilterProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-logconfiguration>
                   logConfiguration :: LogConfigurationProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-sessionlogger.html#cfn-workspacesweb-sessionlogger-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionLogger ::
  EventFilterProperty -> LogConfigurationProperty -> SessionLogger
mkSessionLogger eventFilter logConfiguration
  = SessionLogger
      {haddock_workaround_ = (), eventFilter = eventFilter,
       logConfiguration = logConfiguration,
       additionalEncryptionContext = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       displayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SessionLogger where
  toResourceProperties SessionLogger {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::SessionLogger",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventFilter" JSON..= eventFilter,
                            "LogConfiguration" JSON..= logConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalEncryptionContext"
                                 Prelude.<$> additionalEncryptionContext,
                               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SessionLogger where
  toJSON SessionLogger {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventFilter" JSON..= eventFilter,
               "LogConfiguration" JSON..= logConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalEncryptionContext"
                    Prelude.<$> additionalEncryptionContext,
                  (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdditionalEncryptionContext" SessionLogger where
  type PropertyType "AdditionalEncryptionContext" SessionLogger = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SessionLogger {..}
    = SessionLogger
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "CustomerManagedKey" SessionLogger where
  type PropertyType "CustomerManagedKey" SessionLogger = Value Prelude.Text
  set newValue SessionLogger {..}
    = SessionLogger {customerManagedKey = Prelude.pure newValue, ..}
instance Property "DisplayName" SessionLogger where
  type PropertyType "DisplayName" SessionLogger = Value Prelude.Text
  set newValue SessionLogger {..}
    = SessionLogger {displayName = Prelude.pure newValue, ..}
instance Property "EventFilter" SessionLogger where
  type PropertyType "EventFilter" SessionLogger = EventFilterProperty
  set newValue SessionLogger {..}
    = SessionLogger {eventFilter = newValue, ..}
instance Property "LogConfiguration" SessionLogger where
  type PropertyType "LogConfiguration" SessionLogger = LogConfigurationProperty
  set newValue SessionLogger {..}
    = SessionLogger {logConfiguration = newValue, ..}
instance Property "Tags" SessionLogger where
  type PropertyType "Tags" SessionLogger = [Tag]
  set newValue SessionLogger {..}
    = SessionLogger {tags = Prelude.pure newValue, ..}