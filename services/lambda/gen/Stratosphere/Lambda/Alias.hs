module Stratosphere.Lambda.Alias (
        module Exports, Alias(..), mkAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Alias.AliasRoutingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Alias.ProvisionedConcurrencyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alias
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html>
    Alias {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionname>
           functionName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionversion>
           functionVersion :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-name>
           name :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-provisionedconcurrencyconfig>
           provisionedConcurrencyConfig :: (Prelude.Maybe ProvisionedConcurrencyConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-routingconfig>
           routingConfig :: (Prelude.Maybe AliasRoutingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlias ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Alias
mkAlias functionName functionVersion name
  = Alias
      {haddock_workaround_ = (), functionName = functionName,
       functionVersion = functionVersion, name = name,
       description = Prelude.Nothing,
       provisionedConcurrencyConfig = Prelude.Nothing,
       routingConfig = Prelude.Nothing}
instance ToResourceProperties Alias where
  toResourceProperties Alias {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName,
                            "FunctionVersion" JSON..= functionVersion, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ProvisionedConcurrencyConfig"
                                 Prelude.<$> provisionedConcurrencyConfig,
                               (JSON..=) "RoutingConfig" Prelude.<$> routingConfig]))}
instance JSON.ToJSON Alias where
  toJSON Alias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName,
               "FunctionVersion" JSON..= functionVersion, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ProvisionedConcurrencyConfig"
                    Prelude.<$> provisionedConcurrencyConfig,
                  (JSON..=) "RoutingConfig" Prelude.<$> routingConfig])))
instance Property "Description" Alias where
  type PropertyType "Description" Alias = Value Prelude.Text
  set newValue Alias {..}
    = Alias {description = Prelude.pure newValue, ..}
instance Property "FunctionName" Alias where
  type PropertyType "FunctionName" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {functionName = newValue, ..}
instance Property "FunctionVersion" Alias where
  type PropertyType "FunctionVersion" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {functionVersion = newValue, ..}
instance Property "Name" Alias where
  type PropertyType "Name" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {name = newValue, ..}
instance Property "ProvisionedConcurrencyConfig" Alias where
  type PropertyType "ProvisionedConcurrencyConfig" Alias = ProvisionedConcurrencyConfigurationProperty
  set newValue Alias {..}
    = Alias {provisionedConcurrencyConfig = Prelude.pure newValue, ..}
instance Property "RoutingConfig" Alias where
  type PropertyType "RoutingConfig" Alias = AliasRoutingConfigurationProperty
  set newValue Alias {..}
    = Alias {routingConfig = Prelude.pure newValue, ..}