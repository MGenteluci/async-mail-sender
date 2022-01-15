type HttpResponse = {
    statusCode: string;
    body: string;
};

async function handler(): Promise<HttpResponse> {
    try {
        return { statusCode: '200', body: JSON.stringify({}) };
    } catch (err) {
        console.log('error', err);
        return { statusCode: '500', body: JSON.stringify({ message: 'error on create' }) };
    }
}

export { handler };
