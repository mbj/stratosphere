module Stratosphere.CodePipeline.CustomActionType.ConfigurationPropertiesProperty (
        ConfigurationPropertiesProperty(..),
        mkConfigurationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html>
    ConfigurationPropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-description>
                                     description :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-key>
                                     key :: (Value Prelude.Bool),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-name>
                                     name :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-queryable>
                                     queryable :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-required>
                                     required :: (Value Prelude.Bool),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-secret>
                                     secret :: (Value Prelude.Bool),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-type>
                                     type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationPropertiesProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Bool
        -> Value Prelude.Bool -> ConfigurationPropertiesProperty
mkConfigurationPropertiesProperty key name required secret
  = ConfigurationPropertiesProperty
      {haddock_workaround_ = (), key = key, name = name,
       required = required, secret = secret,
       description = Prelude.Nothing, queryable = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ConfigurationPropertiesProperty where
  toResourceProperties ConfigurationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::CustomActionType.ConfigurationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Name" JSON..= name,
                            "Required" JSON..= required, "Secret" JSON..= secret]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Queryable" Prelude.<$> queryable,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ConfigurationPropertiesProperty where
  toJSON ConfigurationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Name" JSON..= name,
               "Required" JSON..= required, "Secret" JSON..= secret]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Queryable" Prelude.<$> queryable,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Description" ConfigurationPropertiesProperty where
  type PropertyType "Description" ConfigurationPropertiesProperty = Value Prelude.Text
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty
        {description = Prelude.pure newValue, ..}
instance Property "Key" ConfigurationPropertiesProperty where
  type PropertyType "Key" ConfigurationPropertiesProperty = Value Prelude.Bool
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty {key = newValue, ..}
instance Property "Name" ConfigurationPropertiesProperty where
  type PropertyType "Name" ConfigurationPropertiesProperty = Value Prelude.Text
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty {name = newValue, ..}
instance Property "Queryable" ConfigurationPropertiesProperty where
  type PropertyType "Queryable" ConfigurationPropertiesProperty = Value Prelude.Bool
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty
        {queryable = Prelude.pure newValue, ..}
instance Property "Required" ConfigurationPropertiesProperty where
  type PropertyType "Required" ConfigurationPropertiesProperty = Value Prelude.Bool
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty {required = newValue, ..}
instance Property "Secret" ConfigurationPropertiesProperty where
  type PropertyType "Secret" ConfigurationPropertiesProperty = Value Prelude.Bool
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty {secret = newValue, ..}
instance Property "Type" ConfigurationPropertiesProperty where
  type PropertyType "Type" ConfigurationPropertiesProperty = Value Prelude.Text
  set newValue ConfigurationPropertiesProperty {..}
    = ConfigurationPropertiesProperty
        {type' = Prelude.pure newValue, ..}