module Stratosphere.DataZone.Connection (
        module Exports, Connection(..), mkConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.AwsLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.ConnectionPropertiesInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html>
    Connection {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-awslocation>
                awsLocation :: (Prelude.Maybe AwsLocationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-domainidentifier>
                domainIdentifier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-enabletrustedidentitypropagation>
                enableTrustedIdentityPropagation :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-environmentidentifier>
                environmentIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-projectidentifier>
                projectIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-connection.html#cfn-datazone-connection-props>
                props :: (Prelude.Maybe ConnectionPropertiesInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnection ::
  Value Prelude.Text -> Value Prelude.Text -> Connection
mkConnection domainIdentifier name
  = Connection
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       name = name, awsLocation = Prelude.Nothing,
       description = Prelude.Nothing,
       enableTrustedIdentityPropagation = Prelude.Nothing,
       environmentIdentifier = Prelude.Nothing,
       projectIdentifier = Prelude.Nothing, props = Prelude.Nothing}
instance ToResourceProperties Connection where
  toResourceProperties Connection {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsLocation" Prelude.<$> awsLocation,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableTrustedIdentityPropagation"
                                 Prelude.<$> enableTrustedIdentityPropagation,
                               (JSON..=) "EnvironmentIdentifier"
                                 Prelude.<$> environmentIdentifier,
                               (JSON..=) "ProjectIdentifier" Prelude.<$> projectIdentifier,
                               (JSON..=) "Props" Prelude.<$> props]))}
instance JSON.ToJSON Connection where
  toJSON Connection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AwsLocation" Prelude.<$> awsLocation,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableTrustedIdentityPropagation"
                    Prelude.<$> enableTrustedIdentityPropagation,
                  (JSON..=) "EnvironmentIdentifier"
                    Prelude.<$> environmentIdentifier,
                  (JSON..=) "ProjectIdentifier" Prelude.<$> projectIdentifier,
                  (JSON..=) "Props" Prelude.<$> props])))
instance Property "AwsLocation" Connection where
  type PropertyType "AwsLocation" Connection = AwsLocationProperty
  set newValue Connection {..}
    = Connection {awsLocation = Prelude.pure newValue, ..}
instance Property "Description" Connection where
  type PropertyType "Description" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" Connection where
  type PropertyType "DomainIdentifier" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {domainIdentifier = newValue, ..}
instance Property "EnableTrustedIdentityPropagation" Connection where
  type PropertyType "EnableTrustedIdentityPropagation" Connection = Value Prelude.Bool
  set newValue Connection {..}
    = Connection
        {enableTrustedIdentityPropagation = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" Connection where
  type PropertyType "EnvironmentIdentifier" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {environmentIdentifier = Prelude.pure newValue, ..}
instance Property "Name" Connection where
  type PropertyType "Name" Connection = Value Prelude.Text
  set newValue Connection {..} = Connection {name = newValue, ..}
instance Property "ProjectIdentifier" Connection where
  type PropertyType "ProjectIdentifier" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {projectIdentifier = Prelude.pure newValue, ..}
instance Property "Props" Connection where
  type PropertyType "Props" Connection = ConnectionPropertiesInputProperty
  set newValue Connection {..}
    = Connection {props = Prelude.pure newValue, ..}