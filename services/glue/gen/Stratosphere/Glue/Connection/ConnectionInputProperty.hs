module Stratosphere.Glue.Connection.ConnectionInputProperty (
        module Exports, ConnectionInputProperty(..),
        mkConnectionInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Connection.AuthenticationConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Connection.PhysicalConnectionRequirementsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html>
    ConnectionInputProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-athenaproperties>
                             athenaProperties :: (Prelude.Maybe JSON.Object),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-authenticationconfiguration>
                             authenticationConfiguration :: (Prelude.Maybe AuthenticationConfigurationInputProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectionproperties>
                             connectionProperties :: (Prelude.Maybe JSON.Object),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectiontype>
                             connectionType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-matchcriteria>
                             matchCriteria :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-physicalconnectionrequirements>
                             physicalConnectionRequirements :: (Prelude.Maybe PhysicalConnectionRequirementsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-pythonproperties>
                             pythonProperties :: (Prelude.Maybe JSON.Object),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-sparkproperties>
                             sparkProperties :: (Prelude.Maybe JSON.Object),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-validatecredentials>
                             validateCredentials :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-validateforcomputeenvironments>
                             validateForComputeEnvironments :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionInputProperty ::
  Value Prelude.Text -> ConnectionInputProperty
mkConnectionInputProperty connectionType
  = ConnectionInputProperty
      {haddock_workaround_ = (), connectionType = connectionType,
       athenaProperties = Prelude.Nothing,
       authenticationConfiguration = Prelude.Nothing,
       connectionProperties = Prelude.Nothing,
       description = Prelude.Nothing, matchCriteria = Prelude.Nothing,
       name = Prelude.Nothing,
       physicalConnectionRequirements = Prelude.Nothing,
       pythonProperties = Prelude.Nothing,
       sparkProperties = Prelude.Nothing,
       validateCredentials = Prelude.Nothing,
       validateForComputeEnvironments = Prelude.Nothing}
instance ToResourceProperties ConnectionInputProperty where
  toResourceProperties ConnectionInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.ConnectionInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionType" JSON..= connectionType]
                           (Prelude.catMaybes
                              [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
                               (JSON..=) "AuthenticationConfiguration"
                                 Prelude.<$> authenticationConfiguration,
                               (JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PhysicalConnectionRequirements"
                                 Prelude.<$> physicalConnectionRequirements,
                               (JSON..=) "PythonProperties" Prelude.<$> pythonProperties,
                               (JSON..=) "SparkProperties" Prelude.<$> sparkProperties,
                               (JSON..=) "ValidateCredentials" Prelude.<$> validateCredentials,
                               (JSON..=) "ValidateForComputeEnvironments"
                                 Prelude.<$> validateForComputeEnvironments]))}
instance JSON.ToJSON ConnectionInputProperty where
  toJSON ConnectionInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionType" JSON..= connectionType]
              (Prelude.catMaybes
                 [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
                  (JSON..=) "AuthenticationConfiguration"
                    Prelude.<$> authenticationConfiguration,
                  (JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PhysicalConnectionRequirements"
                    Prelude.<$> physicalConnectionRequirements,
                  (JSON..=) "PythonProperties" Prelude.<$> pythonProperties,
                  (JSON..=) "SparkProperties" Prelude.<$> sparkProperties,
                  (JSON..=) "ValidateCredentials" Prelude.<$> validateCredentials,
                  (JSON..=) "ValidateForComputeEnvironments"
                    Prelude.<$> validateForComputeEnvironments])))
instance Property "AthenaProperties" ConnectionInputProperty where
  type PropertyType "AthenaProperties" ConnectionInputProperty = JSON.Object
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {athenaProperties = Prelude.pure newValue, ..}
instance Property "AuthenticationConfiguration" ConnectionInputProperty where
  type PropertyType "AuthenticationConfiguration" ConnectionInputProperty = AuthenticationConfigurationInputProperty
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {authenticationConfiguration = Prelude.pure newValue, ..}
instance Property "ConnectionProperties" ConnectionInputProperty where
  type PropertyType "ConnectionProperties" ConnectionInputProperty = JSON.Object
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {connectionProperties = Prelude.pure newValue, ..}
instance Property "ConnectionType" ConnectionInputProperty where
  type PropertyType "ConnectionType" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {connectionType = newValue, ..}
instance Property "Description" ConnectionInputProperty where
  type PropertyType "Description" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {description = Prelude.pure newValue, ..}
instance Property "MatchCriteria" ConnectionInputProperty where
  type PropertyType "MatchCriteria" ConnectionInputProperty = ValueList Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {matchCriteria = Prelude.pure newValue, ..}
instance Property "Name" ConnectionInputProperty where
  type PropertyType "Name" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {name = Prelude.pure newValue, ..}
instance Property "PhysicalConnectionRequirements" ConnectionInputProperty where
  type PropertyType "PhysicalConnectionRequirements" ConnectionInputProperty = PhysicalConnectionRequirementsProperty
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {physicalConnectionRequirements = Prelude.pure newValue, ..}
instance Property "PythonProperties" ConnectionInputProperty where
  type PropertyType "PythonProperties" ConnectionInputProperty = JSON.Object
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {pythonProperties = Prelude.pure newValue, ..}
instance Property "SparkProperties" ConnectionInputProperty where
  type PropertyType "SparkProperties" ConnectionInputProperty = JSON.Object
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {sparkProperties = Prelude.pure newValue, ..}
instance Property "ValidateCredentials" ConnectionInputProperty where
  type PropertyType "ValidateCredentials" ConnectionInputProperty = Value Prelude.Bool
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {validateCredentials = Prelude.pure newValue, ..}
instance Property "ValidateForComputeEnvironments" ConnectionInputProperty where
  type PropertyType "ValidateForComputeEnvironments" ConnectionInputProperty = ValueList Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {validateForComputeEnvironments = Prelude.pure newValue, ..}