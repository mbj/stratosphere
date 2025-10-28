module Stratosphere.Pipes.Pipe.PipeTargetHttpParametersProperty (
        PipeTargetHttpParametersProperty(..),
        mkPipeTargetHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetHttpParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargethttpparameters.html>
    PipeTargetHttpParametersProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargethttpparameters.html#cfn-pipes-pipe-pipetargethttpparameters-headerparameters>
                                      headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargethttpparameters.html#cfn-pipes-pipe-pipetargethttpparameters-pathparametervalues>
                                      pathParameterValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargethttpparameters.html#cfn-pipes-pipe-pipetargethttpparameters-querystringparameters>
                                      queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetHttpParametersProperty ::
  PipeTargetHttpParametersProperty
mkPipeTargetHttpParametersProperty
  = PipeTargetHttpParametersProperty
      {haddock_workaround_ = (), headerParameters = Prelude.Nothing,
       pathParameterValues = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties PipeTargetHttpParametersProperty where
  toResourceProperties PipeTargetHttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetHttpParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
                            (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
                            (JSON..=) "QueryStringParameters"
                              Prelude.<$> queryStringParameters])}
instance JSON.ToJSON PipeTargetHttpParametersProperty where
  toJSON PipeTargetHttpParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
               (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
               (JSON..=) "QueryStringParameters"
                 Prelude.<$> queryStringParameters]))
instance Property "HeaderParameters" PipeTargetHttpParametersProperty where
  type PropertyType "HeaderParameters" PipeTargetHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {headerParameters = Prelude.pure newValue, ..}
instance Property "PathParameterValues" PipeTargetHttpParametersProperty where
  type PropertyType "PathParameterValues" PipeTargetHttpParametersProperty = ValueList Prelude.Text
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {pathParameterValues = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" PipeTargetHttpParametersProperty where
  type PropertyType "QueryStringParameters" PipeTargetHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}