module Stratosphere.Redshift.ClusterParameterGroup (
        module Exports, ClusterParameterGroup(..), mkClusterParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Redshift.ClusterParameterGroup.ParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ClusterParameterGroup
  = ClusterParameterGroup {description :: (Value Prelude.Text),
                           parameterGroupFamily :: (Value Prelude.Text),
                           parameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                           parameters :: (Prelude.Maybe [ParameterProperty]),
                           tags :: (Prelude.Maybe [Tag])}
mkClusterParameterGroup ::
  Value Prelude.Text -> Value Prelude.Text -> ClusterParameterGroup
mkClusterParameterGroup description parameterGroupFamily
  = ClusterParameterGroup
      {description = description,
       parameterGroupFamily = parameterGroupFamily,
       parameterGroupName = Prelude.Nothing, parameters = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ClusterParameterGroup where
  toResourceProperties ClusterParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ClusterParameterGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description,
                            "ParameterGroupFamily" JSON..= parameterGroupFamily]
                           (Prelude.catMaybes
                              [(JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ClusterParameterGroup where
  toJSON ClusterParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description,
               "ParameterGroupFamily" JSON..= parameterGroupFamily]
              (Prelude.catMaybes
                 [(JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ClusterParameterGroup where
  type PropertyType "Description" ClusterParameterGroup = Value Prelude.Text
  set newValue ClusterParameterGroup {..}
    = ClusterParameterGroup {description = newValue, ..}
instance Property "ParameterGroupFamily" ClusterParameterGroup where
  type PropertyType "ParameterGroupFamily" ClusterParameterGroup = Value Prelude.Text
  set newValue ClusterParameterGroup {..}
    = ClusterParameterGroup {parameterGroupFamily = newValue, ..}
instance Property "ParameterGroupName" ClusterParameterGroup where
  type PropertyType "ParameterGroupName" ClusterParameterGroup = Value Prelude.Text
  set newValue ClusterParameterGroup {..}
    = ClusterParameterGroup
        {parameterGroupName = Prelude.pure newValue, ..}
instance Property "Parameters" ClusterParameterGroup where
  type PropertyType "Parameters" ClusterParameterGroup = [ParameterProperty]
  set newValue ClusterParameterGroup {..}
    = ClusterParameterGroup {parameters = Prelude.pure newValue, ..}
instance Property "Tags" ClusterParameterGroup where
  type PropertyType "Tags" ClusterParameterGroup = [Tag]
  set newValue ClusterParameterGroup {..}
    = ClusterParameterGroup {tags = Prelude.pure newValue, ..}