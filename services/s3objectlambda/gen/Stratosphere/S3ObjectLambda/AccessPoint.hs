module Stratosphere.S3ObjectLambda.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.ObjectLambdaConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPoint
  = AccessPoint {name :: (Prelude.Maybe (Value Prelude.Text)),
                 objectLambdaConfiguration :: ObjectLambdaConfigurationProperty}
mkAccessPoint :: ObjectLambdaConfigurationProperty -> AccessPoint
mkAccessPoint objectLambdaConfiguration
  = AccessPoint
      {objectLambdaConfiguration = objectLambdaConfiguration,
       name = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectLambdaConfiguration" JSON..= objectLambdaConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON AccessPoint where
  toJSON AccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectLambdaConfiguration" JSON..= objectLambdaConfiguration]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Name" AccessPoint where
  type PropertyType "Name" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {name = Prelude.pure newValue, ..}
instance Property "ObjectLambdaConfiguration" AccessPoint where
  type PropertyType "ObjectLambdaConfiguration" AccessPoint = ObjectLambdaConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint {objectLambdaConfiguration = newValue, ..}