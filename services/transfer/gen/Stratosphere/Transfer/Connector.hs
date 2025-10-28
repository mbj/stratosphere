module Stratosphere.Transfer.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Connector.As2ConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Connector.SftpConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Connector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html>
    Connector {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-accessrole>
               accessRole :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-as2config>
               as2Config :: (Prelude.Maybe As2ConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-loggingrole>
               loggingRole :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-securitypolicyname>
               securityPolicyName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-sftpconfig>
               sftpConfig :: (Prelude.Maybe SftpConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-connector.html#cfn-transfer-connector-url>
               url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnector ::
  Value Prelude.Text -> Value Prelude.Text -> Connector
mkConnector accessRole url
  = Connector
      {haddock_workaround_ = (), accessRole = accessRole, url = url,
       as2Config = Prelude.Nothing, loggingRole = Prelude.Nothing,
       securityPolicyName = Prelude.Nothing, sftpConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessRole" JSON..= accessRole, "Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "As2Config" Prelude.<$> as2Config,
                               (JSON..=) "LoggingRole" Prelude.<$> loggingRole,
                               (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
                               (JSON..=) "SftpConfig" Prelude.<$> sftpConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessRole" JSON..= accessRole, "Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "As2Config" Prelude.<$> as2Config,
                  (JSON..=) "LoggingRole" Prelude.<$> loggingRole,
                  (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
                  (JSON..=) "SftpConfig" Prelude.<$> sftpConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessRole" Connector where
  type PropertyType "AccessRole" Connector = Value Prelude.Text
  set newValue Connector {..} = Connector {accessRole = newValue, ..}
instance Property "As2Config" Connector where
  type PropertyType "As2Config" Connector = As2ConfigProperty
  set newValue Connector {..}
    = Connector {as2Config = Prelude.pure newValue, ..}
instance Property "LoggingRole" Connector where
  type PropertyType "LoggingRole" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {loggingRole = Prelude.pure newValue, ..}
instance Property "SecurityPolicyName" Connector where
  type PropertyType "SecurityPolicyName" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {securityPolicyName = Prelude.pure newValue, ..}
instance Property "SftpConfig" Connector where
  type PropertyType "SftpConfig" Connector = SftpConfigProperty
  set newValue Connector {..}
    = Connector {sftpConfig = Prelude.pure newValue, ..}
instance Property "Tags" Connector where
  type PropertyType "Tags" Connector = [Tag]
  set newValue Connector {..}
    = Connector {tags = Prelude.pure newValue, ..}
instance Property "Url" Connector where
  type PropertyType "Url" Connector = Value Prelude.Text
  set newValue Connector {..} = Connector {url = newValue, ..}