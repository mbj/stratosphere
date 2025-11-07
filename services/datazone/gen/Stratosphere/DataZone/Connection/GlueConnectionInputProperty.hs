module Stratosphere.DataZone.Connection.GlueConnectionInputProperty (
        module Exports, GlueConnectionInputProperty(..),
        mkGlueConnectionInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.AuthenticationConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.PhysicalConnectionRequirementsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueConnectionInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html>
    GlueConnectionInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-athenaproperties>
                                 athenaProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-authenticationconfiguration>
                                 authenticationConfiguration :: (Prelude.Maybe AuthenticationConfigurationInputProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-connectionproperties>
                                 connectionProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-connectiontype>
                                 connectionType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-description>
                                 description :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-matchcriteria>
                                 matchCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-name>
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-physicalconnectionrequirements>
                                 physicalConnectionRequirements :: (Prelude.Maybe PhysicalConnectionRequirementsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-pythonproperties>
                                 pythonProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-sparkproperties>
                                 sparkProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-validatecredentials>
                                 validateCredentials :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-validateforcomputeenvironments>
                                 validateForComputeEnvironments :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueConnectionInputProperty :: GlueConnectionInputProperty
mkGlueConnectionInputProperty
  = GlueConnectionInputProperty
      {haddock_workaround_ = (), athenaProperties = Prelude.Nothing,
       authenticationConfiguration = Prelude.Nothing,
       connectionProperties = Prelude.Nothing,
       connectionType = Prelude.Nothing, description = Prelude.Nothing,
       matchCriteria = Prelude.Nothing, name = Prelude.Nothing,
       physicalConnectionRequirements = Prelude.Nothing,
       pythonProperties = Prelude.Nothing,
       sparkProperties = Prelude.Nothing,
       validateCredentials = Prelude.Nothing,
       validateForComputeEnvironments = Prelude.Nothing}
instance ToResourceProperties GlueConnectionInputProperty where
  toResourceProperties GlueConnectionInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.GlueConnectionInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
                            (JSON..=) "AuthenticationConfiguration"
                              Prelude.<$> authenticationConfiguration,
                            (JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
                            (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PhysicalConnectionRequirements"
                              Prelude.<$> physicalConnectionRequirements,
                            (JSON..=) "PythonProperties" Prelude.<$> pythonProperties,
                            (JSON..=) "SparkProperties" Prelude.<$> sparkProperties,
                            (JSON..=) "ValidateCredentials" Prelude.<$> validateCredentials,
                            (JSON..=) "ValidateForComputeEnvironments"
                              Prelude.<$> validateForComputeEnvironments])}
instance JSON.ToJSON GlueConnectionInputProperty where
  toJSON GlueConnectionInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
               (JSON..=) "AuthenticationConfiguration"
                 Prelude.<$> authenticationConfiguration,
               (JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
               (JSON..=) "ConnectionType" Prelude.<$> connectionType,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PhysicalConnectionRequirements"
                 Prelude.<$> physicalConnectionRequirements,
               (JSON..=) "PythonProperties" Prelude.<$> pythonProperties,
               (JSON..=) "SparkProperties" Prelude.<$> sparkProperties,
               (JSON..=) "ValidateCredentials" Prelude.<$> validateCredentials,
               (JSON..=) "ValidateForComputeEnvironments"
                 Prelude.<$> validateForComputeEnvironments]))
instance Property "AthenaProperties" GlueConnectionInputProperty where
  type PropertyType "AthenaProperties" GlueConnectionInputProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {athenaProperties = Prelude.pure newValue, ..}
instance Property "AuthenticationConfiguration" GlueConnectionInputProperty where
  type PropertyType "AuthenticationConfiguration" GlueConnectionInputProperty = AuthenticationConfigurationInputProperty
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {authenticationConfiguration = Prelude.pure newValue, ..}
instance Property "ConnectionProperties" GlueConnectionInputProperty where
  type PropertyType "ConnectionProperties" GlueConnectionInputProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {connectionProperties = Prelude.pure newValue, ..}
instance Property "ConnectionType" GlueConnectionInputProperty where
  type PropertyType "ConnectionType" GlueConnectionInputProperty = Value Prelude.Text
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {connectionType = Prelude.pure newValue, ..}
instance Property "Description" GlueConnectionInputProperty where
  type PropertyType "Description" GlueConnectionInputProperty = Value Prelude.Text
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {description = Prelude.pure newValue, ..}
instance Property "MatchCriteria" GlueConnectionInputProperty where
  type PropertyType "MatchCriteria" GlueConnectionInputProperty = Value Prelude.Text
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {matchCriteria = Prelude.pure newValue, ..}
instance Property "Name" GlueConnectionInputProperty where
  type PropertyType "Name" GlueConnectionInputProperty = Value Prelude.Text
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty {name = Prelude.pure newValue, ..}
instance Property "PhysicalConnectionRequirements" GlueConnectionInputProperty where
  type PropertyType "PhysicalConnectionRequirements" GlueConnectionInputProperty = PhysicalConnectionRequirementsProperty
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {physicalConnectionRequirements = Prelude.pure newValue, ..}
instance Property "PythonProperties" GlueConnectionInputProperty where
  type PropertyType "PythonProperties" GlueConnectionInputProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {pythonProperties = Prelude.pure newValue, ..}
instance Property "SparkProperties" GlueConnectionInputProperty where
  type PropertyType "SparkProperties" GlueConnectionInputProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {sparkProperties = Prelude.pure newValue, ..}
instance Property "ValidateCredentials" GlueConnectionInputProperty where
  type PropertyType "ValidateCredentials" GlueConnectionInputProperty = Value Prelude.Bool
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {validateCredentials = Prelude.pure newValue, ..}
instance Property "ValidateForComputeEnvironments" GlueConnectionInputProperty where
  type PropertyType "ValidateForComputeEnvironments" GlueConnectionInputProperty = ValueList Prelude.Text
  set newValue GlueConnectionInputProperty {..}
    = GlueConnectionInputProperty
        {validateForComputeEnvironments = Prelude.pure newValue, ..}